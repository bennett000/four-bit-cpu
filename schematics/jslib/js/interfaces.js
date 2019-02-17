'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
function isTestListAsync(thing) {
  if (!Array.isArray(thing)) {
    return false;
  }
  if (thing.length > 0) {
    if (!Array.isArray(thing[0])) {
      return false;
    }
  }
  return true;
}
exports.isTestListAsync = isTestListAsync;
function isTestListSync(thing) {
  if (!Array.isArray(thing)) {
    return false;
  }
  return true;
}
exports.isTestListSync = isTestListSync;
function isTestsSync(thing) {
  if (thing.clock) {
    return false;
  }
  return isTestListSync(thing.tests);
}
exports.isTestsSync = isTestsSync;
function isTestsAsync(thing) {
  if (!thing.clock) {
    return false;
  }
  return isTestListAsync(thing.tests);
}
exports.isTestsAsync = isTestsAsync;
//# sourceMappingURL=interfaces.js.map
