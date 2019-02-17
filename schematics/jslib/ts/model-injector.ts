import { readFileSync } from 'fs';
import { join } from 'path';

const npn = readFileSync(
  join(__dirname, '..', '..', 'models', 'npn-2N3904.cir'),
  { encoding: 'utf8' },
)
  .split('\n')
  .filter(Boolean)
  .join('');

export function injectModels(netlistLines: string[]) {
  return [netlistLines[0], npn, ...netlistLines.slice(1)];
}
