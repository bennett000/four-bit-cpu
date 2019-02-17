import {
  TestListSync,
  SpiceResult,
  TestOuput,
  TestInputs,
  TestAsyncInput,
  NetlistMapping,
  NetListDictionary,
  GroupedTransientOutputMap,
  Tests,
  isTestsAsync,
  isTestsSync,
  TestsAsync,
  Clock,
  TruthTable,
} from './interfaces';
import { getNetlistLines } from './netlist';
import {
  generateTests,
  listTests,
  clockFromTest,
  multiplyClockTick,
} from './test-injector';
import { injectModels } from './model-injector';
import { runSpice } from './spice-runner';
import { COMMAND, HIGH_MIN, LOW_MAX } from './constants';
import { groupOutput } from './transient-parser';

export function validateAllTests() {
  const tests = listTests();

  return Promise.all(
    tests.map((thing: string) => {
      return validateTests(thing);
    }),
  ).then(results => {
    return results.reduce((dict: { [key: string]: {} }, validation, i) => {
      dict[tests[i]] = validation;
      return dict;
    }, {});
  });
}

export function validateTests(thing: string) {
  const lines = getNetlistLines(thing);
  const tests = generateTests(thing, injectModels(lines));

  return executeTests(tests.netlists).then(results => {
    return results.map(createResultMapper(tests.testDescs) as any);
  });
}

export function runTests(thing: string) {
  const lines = getNetlistLines(thing);
  const tests = generateTests(thing, injectModels(lines));
  return executeTests(tests.netlists);
}

function mapInputToSpice(input: string[] | TestAsyncInput) {
  const test = Array.isArray(input)
    ? input.join('\n')
    : input.optimized.join('\n');

  if (process.env.NODE_ENV === 'debug') {
    console.log(test);
  }

  return runSpice(COMMAND, test).then(result => {
    if ((input as any).optimized) {
      return {
        map: input.map,
        result,
      };
    } else {
      return result;
    }
  });
}

function executeTests(inputs: TestInputs) {
  return Promise.all(inputs.map(mapInputToSpice));
}

function netlistDictFromMap(map: NetlistMapping[]): NetListDictionary {
  return map.reduce((d: NetListDictionary, mapping) => {
    d[mapping.origin] = mapping;
    return d;
  }, {});
}

function orderOutput(values: { [key: string]: string[] }) {
  return Object.keys(values)
    .reduce((numbered: number[], key) => {
      const value = parseInt(key, 10);
      if (value !== value) {
        return numbered;
      }
      numbered.push(value);
      return numbered;
    }, [])
    .sort((a: number, b: number) => {
      if (a < b) {
        return -1;
      }
      if (a > b) {
        return 1;
      }
      return 0;
    });
}

function mapOrderedOutput(order: number[], output: GroupedTransientOutputMap) {
  return order.reduce(
    (orderedMap: { [key: string]: string }[], index: number) => {
      orderedMap.push(
        output.headers.reduce(
          (map: { [key: string]: string }, header, headerIndex) => {
            const h = header.indexOf('v(') === 0 ? header.slice(2, -1) : header;

            map[h] = output.values[index + ''][headerIndex];
            return map;
          },
          {},
        ),
      );
      return orderedMap;
    },
    [],
  );
}

function timelineFromClockAndTests(clock: Clock, test: TruthTable[]) {
  return test.map((tt, i) => {
    return multiplyClockTick(clock, i);
  });
}

function timeMapFromTimelineAndOrderedMap(
  clock: Clock,
  timeline: number[],
  orderedMap: { [key: string]: string }[],
) {
  return timeline.reduce(
    (map: { [key: number]: { [key: string]: string } }, time) => {
      let values: { [key: string]: string } | null = null;
      for (let i = time; i <= orderedMap.length; i += 1) {
        const actualTime = new Number(orderedMap[i].time).valueOf();
        if (actualTime * 1e9 > time + clock.rise) {
          values = orderedMap[i];
          break;
        }
      }
      if (!values) {
        throw new Error('no time value found for ' + time + 'ns');
      }
      map[time] = values;
      return map;
    },
    {},
  );
}

function createResultTransientMapper(testDescs: TestsAsync) {
  const clock = clockFromTest(testDescs);
  return (
    result: { result: SpiceResult; map: NetlistMapping[] },
    testIndex: number,
  ) => {
    const groupedOutput = groupOutput(result.result.stdout);
    const dict = netlistDictFromMap(result.map);
    const order = orderOutput(groupedOutput.transient.values);
    const mapped = mapOrderedOutput(order, groupedOutput.transient);
    const timeline = timelineFromClockAndTests(
      clock,
      testDescs.tests[testIndex],
    );
    const timeMap: {
      [key: number]: { [key: string]: string };
    } = timeMapFromTimelineAndOrderedMap(clock, timeline, mapped);

    const test = testDescs.tests[testIndex];
    if (test.length === 0) {
      console.warn('No tests');
      return [];
    }

    return test.map((tt, i) => {
      return Object.keys(tt.o).map(prop => {
        const short = dict[prop].short;
        const valueVolts = timeMap[multiplyClockTick(clock, i)][short];
        const value = resultVoltsToBinary(valueVolts);
        const expected = tt.o[prop];

        if (value === expected) {
          return createSuccessOutput();
        } else {
          return createFailOutput(tt.i, tt.o[prop], value);
        }
      });
    });
  };
}

function createResultOpMapper(testDescs: TestListSync) {
  return (result: SpiceResult, i: number) => {
    const inputs = testDescs[i].i;
    const expected = testDescs[i].o;
    const keys = Object.keys(expected);

    const resultLines = result.stdout.split('\n');

    const resultOutputs: TestOuput = resultLines.reduce(
      (outputs: TestOuput, line) => {
        const parts = line
          .split('\t')
          .filter(Boolean)
          .map(el => el.trim())
          .join(' ')
          .split(' ')
          .map(el => el.trim())
          .filter(Boolean);
        if (parts.length === 0) {
          return outputs;
        }
        keys.forEach(key => {
          if (parts[0].toLowerCase() === key.toLowerCase()) {
            const value = resultVoltsToBinary(parts[1]);
            if (value === expected[key]) {
              outputs[key] = createSuccessOutput();
            } else {
              outputs[key] = createFailOutput(inputs, expected[key], value);
            }
          }
        });
        return outputs;
      },
      {},
    );

    const resultKeys = Object.keys(resultOutputs);
    if (resultKeys.length !== keys.length) {
      const missing = keys.filter(key => resultKeys.indexOf(key) < 0);
      resultOutputs.error = `Missing output for ${missing.join(', ')}`;
    }

    return resultOutputs;
  };
}

function createSuccessOutput() {
  return '✓';
}

function createFailOutput(
  inputs: { [key: string]: number },
  expected: number,
  received: number,
) {
  return { inputs, expected, received };
}

function createResultMapper(testDecs: Tests) {
  if (isTestsAsync(testDecs)) {
    return createResultTransientMapper(testDecs);
  } else if (isTestsSync(testDecs)) {
    return createResultOpMapper(testDecs.tests);
  } else {
    throw new Error('unexpected test input');
  }
}

function resultVoltsToBinary(string: string) {
  const num = Number(string);
  if (num > HIGH_MIN) {
    return 1;
  } else if (num > LOW_MAX) {
    return num;
  } else {
    return 0;
  }
}
