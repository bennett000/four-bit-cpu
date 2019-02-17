'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const fs_1 = require('fs');
const path_1 = require('path');
const npn = fs_1
  .readFileSync(
    path_1.join(__dirname, '..', '..', 'models', 'npn-2N3904.cir'),
    { encoding: 'utf8' },
  )
  .split('\n')
  .filter(Boolean)
  .join('');
function injectModels(netlistLines) {
  return [netlistLines[0], npn, ...netlistLines.slice(1)];
}
exports.injectModels = injectModels;
//# sourceMappingURL=model-injector.js.map
