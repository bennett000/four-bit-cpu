const { getNetlistLines } = require('./netlist');
const { generateOpTests, listOpTests } = require('./test-injector');
const { injectModels } = require('./model-injector');
const { runSpice } = require('./spice-runner');
const { COMMAND, HIGH, HIGH_MIN, LOW, LOW_MAX } = require('./constants');

// test
// validateAllOpTests()
//   .then((results) => console.log(require('util').inspect(results, { depth: 10 })))
//   .catch(console.log.bind(console, 'ERROR'));

module.exports.runOpTests = runOpTests;
module.exports.validateAllOpTests = validateAllOpTests;
module.exports.validateOpTests = validateOpTests;

function validateAllOpTests() {
  const tests = listOpTests();

  return Promise.all(tests.map((thing) => {
    return validateOpTests(thing);
  })).then((results) => {
    return results.reduce((dict, validation, i) => {
      dict[tests[i]] = validation;
      return dict;
    }, {});
  });
}

function validateOpTests(thing) {
  const lines = getNetlistLines(thing);
  const tests = generateOpTests(thing, injectModels(lines));

  return runTests(tests.netlists)
    .then((results) => {
      return results.map(createResultMapper(tests.testDescs));
    })
}

function runOpTests(thing) {
  const lines = getNetlistLines(thing);
  const tests = generateOpTests(thing, injectModels(lines));

  return runTests(tests.netlists);
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
    
    const resultOutputs = resultLines.reduce((outputs, line) => {
      const parts = line.split('\t').filter(Boolean)
        .map((el) => el.trim()).join(' ').split(' ').map((el) => el.trim()).filter(Boolean);
      if (parts.length === 0) {
        return outputs;
      }
      keys.forEach((key) => {
        if (parts[0].toLowerCase() === key.toLowerCase()) {
          const value = resultVoltsToBinary(parts[1]);
          if (value === expected[key]) {
            outputs[key] = '✓';
          } else {
            outputs[key] = { inputs, expected: expected[key], received: value };
          }
        }
      });
      return outputs;
    }, {});

    const resultKeys = Object.keys(resultOutputs);
    if (resultKeys.length !== keys.length) {
      const missing = keys.filter((key) => resultKeys.indexOf(key) < 0);
      resultOutputs.error = `Missing output for ${missing.join(', ')}`;
    }

    return resultOutputs;
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