4-bit-cpu Schematics
====================

This folder is a series of KiCad projects, it might be possible to nest the folders and clean up the structure.  For now all the files are in the folder with no structure.  There is a file name convention.  There are also some utilities for testing projects using SPICE.


## Requirements

* KiCad 5.x
* ngspice
* nodejs 8+

## Naming Convention

Due to having _many_ files in one folder the naming convention is important.

* Names use the format `[thing]-[bits]-[inputs]-[outputs]` (`outputs` is optional and mostly used for multiplexers) (there are some errors to this convention as I've found :( )
* The `-test` extension indicates that the project or worksheet is a test harness.  These files _consume_ sheets (and sometimes projects) and can be thought of as "unit test" or in the higher order cases "integration tests".  To be automated, these tests *must* have a power supply for each input you'd like to test
* The files starting with `four-bit-cpu*` are legacy and will be refactored
* I/O names on KiCad sheets use one (`1`) based indexing
* KiCad names use `ALL CAPS` for acronyms and `CamelCase` for short forms

## SPICE Conventions

* Casing matters.  Even though it doesn't matter to SPICE it matters to some of the tooling

## Utilities

`test.js` is a utility for running tests automatically or manually.  The tool is currently evolving.  The tool:

* Reads in `*.cir` files based on CLI arguments
* _In memory_ the script modifies the `*.cir` as per the values in that `*.cir`'s corresponding JSON test file (format is described below)
* The script then runs an `.op` analysis for each truth table specified in the test JSON.
* The script outputs either raw `ngspice` output _or_ a summary of the tests

### Usage

`./schematics/test.js alu` would cause the script to look for `./schematics/alu-test.cir`, _and_ `./schematics/test/alu.json`.  The script would then run `ngspice` once for each test specified in [alu.json](./schematics/test/alu.json "ALU Tests")

The output would look something like:

```bash
[ { '/alu/cout': '✓',
    '/alu/z4': '✓',
    '/alu/z3': '✓',
    '/alu/z2': '✓',
    '/alu/z1': '✓' },
  { '/alu/cout': '✓',
    '/alu/z4': '✓',
    '/alu/z3': '✓',
    '/alu/z2': '✓',
    '/alu/z1': '✓' },
    ...
    (Output hidden, there are lots of tests)
    ...
]
```

Sometimes it's useful to get the actual output of `ngspice` this can be done with a similar command:


`./schematics/test.js run alu`, this would dump the raw `ngspice` output _for each test_.  Redirecting `stdout` to a file is recommended.  Example: `./schematics/test.js run alu > output`.  Then use an editor or `cat output | grep` to search the output.

### Test Data

Data for automatic testing is stored in `schematics/tests` the format is JSON and looks like so:

```json
{
  "tests": [{
    "i": { "/Ain": 0, "/Bin": 0, "/Cin": 0 },
    "o": { "/nor-3/q": 1 } 
    },{
    "i": { "/Ain": 1, "/Bin": 1, "/Cin": 0 },
    "o": { "/nor-3/q": 0 } 
    },]
}
```

The above format is taken from [nor-3](./schematics/tests/gate-nor-3.json "nor-3 truth table tests")

* The `tests` array has a list of objects
* Each object in the test array has an `i` (input), and an `o` output property.
* The input/output properties are dictionaries of a particular circuits input values and their expected outputs.

In the above example, if `Ain`, `Bin`, and `Cin` are all `0` we can expect the output `nor-3/q` to be `1`, which makes sense.  None of the inputs are in a HIGH state and that satisfies nor.

## License

* Any software written for this project is subject to [GPLv3](../LICENSE)
* All documentation is subject to the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode) license terms
