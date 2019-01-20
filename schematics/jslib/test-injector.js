const { readdirSync, readFileSync } = require('fs');
const { join } = require('path');
const { HIGH, LOW } = require('./constants');

module.exports.generateOpTests = generateOpTests;
module.exports.listOpTests = listOpTests;

const opDir = join(__dirname, '..', 'tests')

// console.log(generateOpTests(
//   'gate-xor-2',
//   require('fs')
//     .readFileSync('../gate-xor-2-test.cir', { encoding: 'utf8' })
//     .split('\n')
// ));

function listOpTests() {
  return readdirSync(opDir).filter(Boolean).map((file) => {
    const split = file.split('.');
    split.pop();
    return split.join('.');
  });
}

function generateOpTests(thing, netlistLines) {
  const testDesc = readOpTests(thing);
  return {
    netlists: generateTestInputs(testDesc, netlistLines, '.op'),
    testDescs: testDesc.tests,
  };
}

function readOpTests(thing) {
  return JSON.parse(readFileSync(
    join(opDir, `${thing}.json`), { encoding: 'utf8' }
  ));
}

function generateTestInputs(testDesc, netlistLines, type) {
  return testDesc.tests.map((testDesc) => {
    const labels = Object.keys(testDesc.i);

    const test = netlistLines.map(createNetlistMapper(testDesc, labels));
    const tail = test.slice(1);

    return [test[0], type, ...tail];
  });
}

function createNetlistMapper(testDesc, labels) {
  return (line) => {
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
  }
}
