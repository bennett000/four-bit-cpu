import { readFileSync } from 'fs';
import { join } from 'path';

export function getNetlistLines(thing: string) {
  return readFileSync(join(__dirname, '..', '..', `${thing}-test.cir`), {
    encoding: 'utf8',
  })
    .split('\n')
    .filter(Boolean);
}
