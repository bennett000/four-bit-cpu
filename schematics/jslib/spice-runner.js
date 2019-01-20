/**
 * Runs ng spice
 */
const { spawn } = require('child_process');

// test
// runSpice(
//   '/Applications/ngspice/bin/ngspice', 
//   `Test Model
//   .op
//   V1 0 someNode dc 5
//   R1 0 someNode 100
//   `
//   )
//   .then(console.log.bind(console))
//   .catch((err) => {
//     console.log('err')
//     console.log(err);
//   })

function runSpice(command, netlist) {
  const spice = spawn(command);

  spice.stderr.setEncoding('utf8');
  spice.stdout.setEncoding('utf8');

  let stdout = '';
  let stderr = '';

  spice.stdin.write(netlist);
  spice.stdin.end();

  spice.stdout.on('data', (data) => {
    stdout += data;
  });

  spice.stderr.on('data', (data) => {
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
