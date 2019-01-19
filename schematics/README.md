4-bit-cpu Schematics
====================

This folder is a series of KiCad projects, it might be possible to nest the folders and clean up the structure.  For now all the files are in the folder with no structure.  There is a file name convention.  There are also some utilities for testing projects using SPICE.


## Requirements

* KiCad 5.x
* ngspice
* bash
* nodejs 8+ (optional)

## Naming Convention

Due to having _many_ files in one folder the naming convention is important.

* Names use the format `[thing]-[bits]-[inputs]-[outputs]` (`outputs` is optional and mostly used for multiplexers)
* The `-test` extension indicates that the project or worksheet is a test harness.  These files _consume_ sheets (and sometimes projects)
and can be thought of as "unit test" or in the higher order cases "integration tests"
* The files starting with `four-bit-cpu*` are legacy and will be refactored
* I/O names on KiCad sheets use one (`1`) based indexing
* KiCad names use `ALL CAPS` for acronyms and `CamelCase` for short forms

## Utilities

* `test.sh` this utility takes one argument, the name of a netlist (`*.cir`) file to run.  
    * The script assumes all `*.cir` files are in the same folder as the script
    * The script requires the user _omit_ the `.cir` extension
    * The script first looks for the name of the netlist provided with a `-test.cir` extension
        * If the `name-test.cir` is not found the script falls back to `name.cir`
        * If `name.cir` is also not found the script errors out
    * If the netlist has been freshly generated from KiCad
        * The script removes all `/` and `-` characters (they don't work in complex SPICE expressions)
        * The script adds a model of an `NPN` transistor
        * The script adds a `.op` test
    * Finally the script feeds the netlist into `ngspice` and the user can manually check voltages
    * The user is free to modify the netlist (add new tests, etc) and upon repeat runs will not escape strings or add `.op`
    * _Warning 1_ if the user generates a new netlist from KiCad their existing script will be overwritten.  In the future we can store more sophisticated tests like transient analysis and have `test.sh` inject them as opposed to `.op`
    * _Warning 2_ the script assumes `ngspice` is in `/Applications/ngspice/bin/ngspice` which is not really portable
    * _Example_ `./test.sh gate-nor-2`
* `tc.js` this utility expects piped data from another program.  I'm pretty sure something like `fold` might be able to do the same work. `tc` stands for "Transient Collapse".  When there are long `print` statements in `ngspice` netlists it auto truncates its output to about 78 characters in width... `tc.js` sews all that data back together and outputs for rows.  `tc.js` also swallows lines that increase in step/time but who's values do not change.  This makes it "easy" to see what's hot and what's not.

## License

* Any software written for this project is subject to [GPLv3](../LICENSE)
* All documentation is subject to the [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International](https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode) license terms
