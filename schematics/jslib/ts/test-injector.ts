import { readdirSync, readFileSync } from 'fs';
import { join } from 'path';
import {
  HIGH,
  LOW,
  DEFAULT_CLOCK_RISE,
  DEFAULT_CLOCK_FALL,
  DEFAULT_CLOCK_PERIOD,
  DEFAULT_CLOCK_WIDTH,
  DEFAULT_TESTS_PER_TICK,
  NS,
} from './constants';
import {
  TruthTable,
  Tests,
  TestsAsync,
  TestsSync,
  isTestsSync,
  Clock,
  TestListAsync,
  PwlDict,
  isTestsAsync,
  TestInputs,
} from './interfaces';
import { optimizeNetlist } from './optimize-netlist';

const opDir = join(__dirname, '..', '..', 'tests');

export function listTests() {
  return readdirSync(opDir)
    .filter(Boolean)
    .map(file => {
      const split = file.split('.');
      split.pop();
      return split.join('.');
    });
}

export function generateTests(thing: string, netlistLines: string[]) {
  const testDescs = readTests(thing);
  return {
    netlists: generateTestInputs(testDescs, netlistLines),
    testDescs,
  };
}

function readTests(thing: string): Tests {
  return JSON.parse(
    readFileSync(join(opDir, `${thing}.json`), { encoding: 'utf8' }),
  );
}

function generateTestInputs(
  testDescs: Tests,
  netlistLines: string[],
): TestInputs {
  if (isTestsAsync(testDescs)) {
    const rawTests = generateTransientTest(testDescs, netlistLines);
    return rawTests.map(lines => {
      return optimizeNetlist(lines);
    });
  } else if (isTestsSync(testDescs)) {
    return generateOpTest(testDescs, netlistLines);
  } else {
    console.warn('warning unexpected test input', netlistLines);
    return [];
  }
}

export function clockFromTest(testDescs: TestsAsync): Clock {
  return {
    fall: testDescs.clockFall || DEFAULT_CLOCK_FALL,
    period: testDescs.clockPeriod || DEFAULT_CLOCK_PERIOD,
    prop: testDescs.clock,
    rise: testDescs.clockRise || DEFAULT_CLOCK_RISE,
    testsPerTick: testDescs.testsPerTick || DEFAULT_TESTS_PER_TICK,
    width: testDescs.clockWidth || DEFAULT_CLOCK_WIDTH,
  };
}

function generateTransientTest(
  testDescs: TestsAsync,
  netlistLines: string[],
): string[][] {
  const clock = clockFromTest(testDescs);
  const pwls = generatePwls(clock, testDescs.tests);
  const vars = getTransientVariables(testDescs);

  return testDescs.tests.map((testDesc, i) => {
    const test = netlistLines.map(
      createNetlistTransientMapper(clock, testDesc, pwls[i]),
    );
    const tail = test.slice(1);
    const print = generateTransientPrint([clock.prop, ...vars[i]]);
    const transientTest = generateTransientLine(clock, testDesc.length);

    return [test[0], transientTest, print, ...tail];
  });
}

function generateTransientLine(clock: Clock, testCount: number) {
  const duration = clock.period * (testCount + 2); // add a touch of end padding
  return `.tran 1${NS} ${duration + NS}`;
}

function generateTransientPrint(labels: string[]) {
  const tail = labels.map(label => `v(${label})`);
  return '.print tran ' + tail.join(' ');
}

function generatePwls(clock: Clock, tests: TestListAsync) {
  return tests.map(test => generatePwl(clock, test));
}

export function multiplyClockTick(clock: Clock, value: number) {
  return Math.floor((value * clock.period) / clock.testsPerTick);
}

function generatePwl(clock: Clock, test: TruthTable[]) {
  return test.reduce((pwlDict: PwlDict, tt, index) => {
    Object.keys(tt.i).forEach(key => {
      if (!pwlDict[key]) {
        pwlDict[key] = [];
      }
      const time = multiplyClockTick(clock, index);
      const value = tt.i[key] ? HIGH : LOW;
      if (time === 0) {
        pwlDict[key].push(0);
        pwlDict[key].push(value);
      } else {
        const antiValue = value === HIGH ? LOW : HIGH;
        pwlDict[key].push(time - 2 + NS);
        pwlDict[key].push(antiValue);
        pwlDict[key].push(time + NS);
        pwlDict[key].push(value);
      }
    });
    return pwlDict;
  }, {});
}

export function getTransientVariables(testDesc: TestsAsync): string[][] {
  return testDesc.tests.reduce((labelsByTest: string[][], testValues) => {
    labelsByTest.push(
      testValues.reduce((labels: string[], tt) => {
        const addLabel = (label: string) => {
          if (labels.indexOf(label) === -1) {
            labels.push(label);
          }
        };

        Object.keys(tt.i).forEach(addLabel);
        Object.keys(tt.o).forEach(addLabel);
        return labels;
      }, []),
    );
    return labelsByTest;
  }, []);
}

function generateOpTest(
  testDescs: TestsSync,
  netlistLines: string[],
): string[][] {
  return testDescs.tests.map((testDesc: TruthTable) => {
    const labels = Object.keys(testDesc.i);

    const test = netlistLines.map(createNetlistOpMapper(testDesc, labels));
    const tail = test.slice(1);

    return [test[0], '.op', ...tail];
  });
}

function createNetlistOpMapper(testDesc: TruthTable, labels: string[]) {
  return (line: string) => {
    if (line.indexOf('V') === 0) {
      return labels.reduce((newLine, label) => {
        if (line.indexOf(label) >= 0) {
          const voltage = testDesc.i[label] === 1 ? HIGH : LOW;
          return line.replace(/dc [0|5]/, `dc ${voltage}`);
        }
        return newLine;
      }, line);
    }
    return line;
  };
}

function generateClockString(clock: Clock) {
  return `PULSE(${LOW} ${HIGH} 0${NS} ${clock.rise + NS} ${clock.fall +
    NS} ${clock.width + NS} ${clock.period + NS})`;
}

function createNetlistTransientMapper(
  clock: Clock,
  testDesc: TruthTable[],
  pwls: PwlDict,
) {
  const clockString = generateClockString(clock);
  return (line: string) => {
    if (line.indexOf('V') === 0) {
      if (line.indexOf(clock.prop) >= 0) {
        const tryDc = line.replace(/dc [0|5]/, clockString);
        return tryDc.replace(/PULSE\(.*\)/, clockString);
      } else {
        return Object.keys(pwls).reduce((newLine: string, label) => {
          if (line.indexOf(label) >= 0) {
            return line.replace(/dc [0|5]/, `PWL(${pwls[label].join(' ')})`);
          }
          return newLine;
        }, line);
      }
    }
    return line;
  };
}
