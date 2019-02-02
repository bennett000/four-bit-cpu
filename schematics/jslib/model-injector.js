const { readFileSync } = require('fs');
const { join } = require('path');

const npn = readFileSync(
  join(__dirname, '..', 'models', 'npn-2N3904.cir'), { encoding: 'utf8' }
).split('\n').filter(Boolean).join('');

module.exports.injectModels = injectModels;

// test
// console.log(injectModels(['a', 'b', 'c']));

function injectModels(netlistLines) {
  return [netlistLines[0], npn, ...netlistLines.slice(1)];
}
