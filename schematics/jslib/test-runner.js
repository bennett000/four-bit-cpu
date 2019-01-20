const { getNetlistLines } = require('./netlist');
const { generateOpTests } = require('./test-injector');
const { injectModels } = require('./model-injector');
const { runSpice } = require('./spice-runner');
const { inspect } = require('util');
const { COMMAND, HIGH, HIGH_MIN, LOW, LOW_MAX } = require('./constants');

// test
validateOpTests('gate-xor-2')
  .then((results) => console.log(inspect(results, { depth: 10 })))
  .catch(console.log.bind(console, 'ERROR'));

function validateOpTests(thing) {
  const lines = getNetlistLines(thing);
  const tests = generateOpTests(thing, injectModels(lines));

  return runTests(tests.netlists)
    .then((results) => {
      return results.map(createResultMapper(tests.testDescs))
        .filter((result) => Object.keys(result).length > 0);
    })
}

function runTests(lineArrays) {
  return Promise.all(lineArrays.map((lineArray) => {
    const test = lineArray.join('\n');
    return runSpice(COMMAND, test);
  }));
}

function createResultMapper(testDescs) {
  return (result, i) => {
    const inputs = testDescs[i].i;
    const expected = testDescs[i].o;
    const keys = Object.keys(expected);

    const resultLines = result.stdout.split('\n');
    
    return resultLines.reduce((outputs, line) => {
      const parts = line.split('\t').filter(Boolean).map((el) => el.trim()).join(' ').split(' ').filter(Boolean);
      keys.forEach((key) => {
        if (parts[0] === key) {
          const value = resultVoltsToBinary(parts[1]);
          if (value === expected[key]) {
          } else {
            outputs[key] = { inputs, expected: expected[key], received: value };
          }
        }
      });
      return outputs;
    }, {});
  };
}

function resultVoltsToBinary(string) {
  const num = Number(string);
  if (num > HIGH_MIN) {
    return 1;
  } else if (num > LOW_MAX) {
    return num;
  } else {
    return 0;
  }
}