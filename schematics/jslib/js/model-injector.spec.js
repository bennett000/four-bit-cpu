'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
const model_injector_1 = require('./model-injector');
describe('model injector', () => {
  it('injects models from disk into a netlist', () => {
    const newList = model_injector_1.injectModels(['title', 'line1', 'line2']);
    expect(newList.length).toBe(4);
  });
});
//# sourceMappingURL=model-injector.spec.js.map
