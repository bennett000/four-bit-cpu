#!/usr/bin/env node

const { inspect } = require('util');
const { runOpTests, validateAllOpTests, validateOpTests } = require('./jslib/test-runner');
const logError = console.log.bind(console, 'Error:');
const inspectLog = (thing) => console.log(inspect(thing, { depth: 10 })); 
const log = console.log.bind(console);

main(process.argc, process.argv);


function main(argc, argv) {
  if (!argv[2]) {
    validateAllOpTests()
      .then(inspectLog)
      .catch(logError);
  } else if (argv[2] === 'run') {
    if (!argv[3]) {
      runAll(argv[2]);
    } else {
      runOpTests(argv[3])
        .then((results) => results.forEach((t) => {
          log(t.stdout);
          log(t.stderr);
        }))
        .catch(logError);
    }
  } else {
    runAll(argv[2]);
  }
}

function runAll(thing) {
  validateOpTests(thing)
    .then(inspectLog)
    .catch(logError);
}