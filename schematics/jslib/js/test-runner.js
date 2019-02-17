'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const interfaces_1 = require('./interfaces');
const netlist_1 = require('./netlist');
const test_injector_1 = require('./test-injector');
const model_injector_1 = require('./model-injector');
const spice_runner_1 = require('./spice-runner');
const constants_1 = require('./constants');
const transient_parser_1 = require('./transient-parser');
function validateAllTests() {
  const tests = test_injector_1.listTests();
  return Promise.all(
    tests.map(thing => {
      return validateTests(thing);
    }),
  ).then(results => {
    return results.reduce((dict, validation, i) => {
      dict[tests[i]] = validation;
      return dict;
    }, {});
  });
}
exports.validateAllTests = validateAllTests;
function validateTests(thing) {
  const lines = netlist_1.getNetlistLines(thing);
  const tests = test_injector_1.generateTests(
    thing,
    model_injector_1.injectModels(lines),
  );
  return executeTests(tests.netlists).then(results => {
    return results.map(createResultMapper(tests.testDescs));
  });
}
exports.validateTests = validateTests;
function runTests(thing) {
  const lines = netlist_1.getNetlistLines(thing);
  const tests = test_injector_1.generateTests(
    thing,
    model_injector_1.injectModels(lines),
  );
  return executeTests(tests.netlists);
}
exports.runTests = runTests;
function mapInputToSpice(input) {
  const test = Array.isArray(input)
    ? input.join('\n')
    : input.optimized.join('\n');
  if (process.env.NODE_ENV === 'debug') {
    console.log(test);
  }
  return spice_runner_1.runSpice(constants_1.COMMAND, test).then(result => {
    if (input.optimized) {
      return {
        map: input.map,
        result,
      };
    } else {
      return result;
    }
  });
}
function executeTests(inputs) {
  return Promise.all(inputs.map(mapInputToSpice));
}
function netlistDictFromMap(map) {
  return map.reduce((d, mapping) => {
    d[mapping.origin] = mapping;
    return d;
  }, {});
}
function orderOutput(values) {
  return Object.keys(values)
    .reduce((numbered, key) => {
      const value = parseInt(key, 10);
      if (value !== value) {
        return numbered;
      }
      numbered.push(value);
      return numbered;
    }, [])
    .sort((a, b) => {
      if (a < b) {
        return -1;
      }
      if (a > b) {
        return 1;
      }
      return 0;
    });
}
function mapOrderedOutput(order, output) {
  return order.reduce((orderedMap, index) => {
    orderedMap.push(
      output.headers.reduce((map, header, headerIndex) => {
        const h = header.indexOf('v(') === 0 ? header.slice(2, -1) : header;
        map[h] = output.values[index + ''][headerIndex];
        return map;
      }, {}),
    );
    return orderedMap;
  }, []);
}
function timelineFromClockAndTests(clock, test) {
  return test.map((tt, i) => {
    return test_injector_1.multiplyClockTick(clock, i);
  });
}
function timeMapFromTimelineAndOrderedMap(clock, timeline, orderedMap) {
  return timeline.reduce((map, time) => {
    let values = null;
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
  }, {});
}
function createResultTransientMapper(testDescs) {
  const clock = test_injector_1.clockFromTest(testDescs);
  return (result, testIndex) => {
    const groupedOutput = transient_parser_1.groupOutput(result.result.stdout);
    const dict = netlistDictFromMap(result.map);
    const order = orderOutput(groupedOutput.transient.values);
    const mapped = mapOrderedOutput(order, groupedOutput.transient);
    const timeline = timelineFromClockAndTests(
      clock,
      testDescs.tests[testIndex],
    );
    const timeMap = timeMapFromTimelineAndOrderedMap(clock, timeline, mapped);
    const test = testDescs.tests[testIndex];
    if (test.length === 0) {
      console.warn('No tests');
      return [];
    }
    return test.map((tt, i) => {
      return Object.keys(tt.o).map(prop => {
        const short = dict[prop].short;
        const valueVolts =
          timeMap[test_injector_1.multiplyClockTick(clock, i)][short];
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
function createResultOpMapper(testDescs) {
  return (result, i) => {
    const inputs = testDescs[i].i;
    const expected = testDescs[i].o;
    const keys = Object.keys(expected);
    const resultLines = result.stdout.split('\n');
    const resultOutputs = resultLines.reduce((outputs, line) => {
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
    }, {});
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
function createFailOutput(inputs, expected, received) {
  return { inputs, expected, received };
}
function createResultMapper(testDecs) {
  if (interfaces_1.isTestsAsync(testDecs)) {
    return createResultTransientMapper(testDecs);
  } else if (interfaces_1.isTestsSync(testDecs)) {
    return createResultOpMapper(testDecs.tests);
  } else {
    throw new Error('unexpected test input');
  }
}
function resultVoltsToBinary(string) {
  const num = Number(string);
  if (num > constants_1.HIGH_MIN) {
    return 1;
  } else if (num > constants_1.LOW_MAX) {
    return num;
  } else {
    return 0;
  }
}
//# sourceMappingURL=test-runner.js.map
