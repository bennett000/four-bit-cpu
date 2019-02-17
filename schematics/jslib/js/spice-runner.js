'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
/**
 * Runs ng spice
 */
const child_process_1 = require('child_process');
function runSpice(command, netlist) {
  const spice = child_process_1.spawn(command);
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
  return new Promise((resolve, reject) => {
    spice.on('close', () => {
      resolve({
        stdout,
        stderr,
      });
    });
  });
}
exports.runSpice = runSpice;
//# sourceMappingURL=spice-runner.js.map
