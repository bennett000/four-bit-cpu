/**
 * Runs ng spice
 */
import { spawn } from 'child_process';
import { SpiceResult } from './interfaces';

export function runSpice(command: string, netlist: string) {
  const spice = spawn(command);

  spice.stderr.setEncoding('utf8');
  spice.stdout.setEncoding('utf8');

  let stdout = '';
  let stderr = '';

  spice.stdin.write(netlist);
  spice.stdin.end();

  spice.stdout.on('data', data => {
    stdout += data;
  });

  spice.stderr.on('data', data => {
    stderr += data;
  });

  return new Promise<SpiceResult>((resolve, reject) => {
    spice.on('close', () => {
      resolve({
        stdout,
        stderr,
      });
    });
  });
}
