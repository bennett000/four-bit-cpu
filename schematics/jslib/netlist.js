const { readFileSync } = require('fs');
const { join } = require('path');

module.exports.getNetlistLines = getNetlistLines;

function getNetlistLines(thing) {
  return readFileSync(join(__dirname, '..', `${thing}-test.cir`), { encoding: 'utf8' })
    .split('\n')
    .filter(Boolean);
}
