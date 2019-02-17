# JavaScript Spice Runner

This library:

- Reads ngspice netlists
- Injects tests based on JSON
- Executes the tests with ngspice
- Parses the results
- Generates pass/fails based on test JSON

## Artifacts

This library builds from typescript to JavaScript using `yarn build` from this directory. Since this project (4-bit-cpu) is _not_ a JS project we will keep the build artifacts in source control. This enables users wiht node installed to run the tests but not have to install node modules or build tools or any of that.

- The `ts` folder has the source code which _must be dependency free_
- The `js` folder has the built code

## Dev

- `yarn build`
- `yarn test`
- `yarn test:w` (watch mode)
