'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const fs_1 = require('fs');
const path_1 = require('path');
const constants_1 = require('./constants');
const interfaces_1 = require('./interfaces');
const optimize_netlist_1 = require('./optimize-netlist');
const opDir = path_1.join(__dirname, '..', '..', 'tests');
function listTests() {
  return fs_1
    .readdirSync(opDir)
    .filter(Boolean)
    .map(file => {
      const split = file.split('.');
      split.pop();
      return split.join('.');
    });
}
exports.listTests = listTests;
function generateTests(thing, netlistLines) {
  const testDescs = readTests(thing);
  return {
    netlists: generateTestInputs(testDescs, netlistLines),
    testDescs,
  };
}
exports.generateTests = generateTests;
function readTests(thing) {
  return JSON.parse(
    fs_1.readFileSync(path_1.join(opDir, `${thing}.json`), {
      encoding: 'utf8',
    }),
  );
}
function generateTestInputs(testDescs, netlistLines) {
  if (interfaces_1.isTestsAsync(testDescs)) {
    const rawTests = generateTransientTest(testDescs, netlistLines);
    return rawTests.map(lines => {
      return optimize_netlist_1.optimizeNetlist(lines);
    });
  } else if (interfaces_1.isTestsSync(testDescs)) {
    return generateOpTest(testDescs, netlistLines);
  } else {
    console.warn('warning unexpected test input', netlistLines);
    return [];
  }
}
function clockFromTest(testDescs) {
  return {
    fall: testDescs.clockFall || constants_1.DEFAULT_CLOCK_FALL,
    period: testDescs.clockPeriod || constants_1.DEFAULT_CLOCK_PERIOD,
    prop: testDescs.clock,
    rise: testDescs.clockRise || constants_1.DEFAULT_CLOCK_RISE,
    testsPerTick: testDescs.testsPerTick || constants_1.DEFAULT_TESTS_PER_TICK,
    width: testDescs.clockWidth || constants_1.DEFAULT_CLOCK_WIDTH,
  };
}
exports.clockFromTest = clockFromTest;
function generateTransientTest(testDescs, netlistLines) {
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
function generateTransientLine(clock, testCount) {
  const duration = clock.period * (testCount + 2); // add a touch of end padding
  return `.tran 1${constants_1.NS} ${duration + constants_1.NS}`;
}
function generateTransientPrint(labels) {
  const tail = labels.map(label => `v(${label})`);
  return '.print tran ' + tail.join(' ');
}
function generatePwls(clock, tests) {
  return tests.map(test => generatePwl(clock, test));
}
function multiplyClockTick(clock, value) {
  return Math.floor((value * clock.period) / clock.testsPerTick);
}
exports.multiplyClockTick = multiplyClockTick;
function generatePwl(clock, test) {
  return test.reduce((pwlDict, tt, index) => {
    Object.keys(tt.i).forEach(key => {
      if (!pwlDict[key]) {
        pwlDict[key] = [];
      }
      const time = multiplyClockTick(clock, index);
      const value = tt.i[key] ? constants_1.HIGH : constants_1.LOW;
      if (time === 0) {
        pwlDict[key].push(0);
        pwlDict[key].push(value);
      } else {
        const antiValue =
          value === constants_1.HIGH ? constants_1.LOW : constants_1.HIGH;
        pwlDict[key].push(time - 2 + constants_1.NS);
        pwlDict[key].push(antiValue);
        pwlDict[key].push(time + constants_1.NS);
        pwlDict[key].push(value);
      }
    });
    return pwlDict;
  }, {});
}
function getTransientVariables(testDesc) {
  return testDesc.tests.reduce((labelsByTest, testValues) => {
    labelsByTest.push(
      testValues.reduce((labels, tt) => {
        const addLabel = label => {
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
exports.getTransientVariables = getTransientVariables;
function generateOpTest(testDescs, netlistLines) {
  return testDescs.tests.map(testDesc => {
    const labels = Object.keys(testDesc.i);
    const test = netlistLines.map(createNetlistOpMapper(testDesc, labels));
    const tail = test.slice(1);
    return [test[0], '.op', ...tail];
  });
}
function createNetlistOpMapper(testDesc, labels) {
  return line => {
    if (line.indexOf('V') === 0) {
      return labels.reduce((newLine, label) => {
        if (line.indexOf(label) >= 0) {
          const voltage =
            testDesc.i[label] === 1 ? constants_1.HIGH : constants_1.LOW;
          return line.replace(/dc [0|5]/, `dc ${voltage}`);
        }
        return newLine;
      }, line);
    }
    return line;
  };
}
function generateClockString(clock) {
  return `PULSE(${constants_1.LOW} ${constants_1.HIGH} 0${
    constants_1.NS
  } ${clock.rise + constants_1.NS} ${clock.fall +
    constants_1.NS} ${clock.width + constants_1.NS} ${clock.period +
    constants_1.NS})`;
}
function createNetlistTransientMapper(clock, testDesc, pwls) {
  const clockString = generateClockString(clock);
  return line => {
    if (line.indexOf('V') === 0) {
      if (line.indexOf(clock.prop) >= 0) {
        const tryDc = line.replace(/dc [0|5]/, clockString);
        return tryDc.replace(/PULSE\(.*\)/, clockString);
      } else {
        return Object.keys(pwls).reduce((newLine, label) => {
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
//# sourceMappingURL=test-injector.js.map
