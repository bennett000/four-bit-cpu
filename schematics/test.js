#!/usr/bin/env node

const { inspect } = require('util');
const { runTests, validateAllTests, validateTests } = require('./jslib/js/test-runner');
const logError = console.log.bind(console, 'Error:');
const inspectLog = (thing) => console.log(inspect(thing, { depth: 10 })); 
const log = console.log.bind(console);

main(process.argc, process.argv);


function main(argc, argv) {
  if (!argv[2]) {
    validateAllTests()
      .then(inspectLog)
      .catch(logError);
  } else if (argv[2] === 'run') {
    if (!argv[3]) {
      runAll(argv[2]);
    } else {
      runTests(argv[3])
        .then((results) => results.forEach((t) => {
          if (t.stdout) {
            log(t.stdout);
            log(t.stderr);
          } else {
            log(t.map);
            log(t.result.stdout);
            log(t.result.stderr);
          }
        }))
        .catch(logError);
    }
  } else {
    runAll(argv[2]);
  }
}

function runAll(thing) {
  validateTests(thing)
    .then(inspectLog)
    .catch(logError);
}