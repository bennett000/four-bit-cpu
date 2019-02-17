import { getNetlistLines } from './netlist';

describe('netlist', () => {
  it('returns an array of strings', () => {
    const lines = getNetlistLines('gate-not');

    expect(Array.isArray(lines)).toBe(true);
  });
});
