'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const fs_1 = require('fs');
const path_1 = require('path');
function getNetlistLines(thing) {
  return fs_1
    .readFileSync(path_1.join(__dirname, '..', '..', `${thing}-test.cir`), {
      encoding: 'utf8',
    })
    .split('\n')
    .filter(Boolean);
}
exports.getNetlistLines = getNetlistLines;
//# sourceMappingURL=netlist.js.map
