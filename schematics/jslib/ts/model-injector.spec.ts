import { injectModels } from './model-injector';

describe('model injector', () => {
  it('injects models from disk into a netlist', () => {
    const newList = injectModels(['title', 'line1', 'line2']);

    expect(newList.length).toBe(4);
  });
});
