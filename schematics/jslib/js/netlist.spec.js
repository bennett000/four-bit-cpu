'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const netlist_1 = require('./netlist');
describe('netlist', () => {
  it('returns an array of strings', () => {
    const lines = netlist_1.getNetlistLines('gate-not');
    expect(Array.isArray(lines)).toBe(true);
  });
});
//# sourceMappingURL=netlist.spec.js.map
