export interface GroupedTransientOutput {
  start: string[];
  transient: GroupedTransientOutputMap;
  end: string[];
}

export interface GroupedTransientOutputMap {
  headers: string[];
  values: { [key: string]: string[] };
}

export type TestAsyncInput = { optimized: string[]; map: NetlistMapping[] };
export type TestInputs = (string[] | TestAsyncInput)[];

export interface SpiceResult {
  stdout: string;
  stderr: string;
}

export interface TestOuput {
  [key: string]:
    | string
    | {
        inputs: { [key: string]: number };
        expected: number;
        received: number;
      };
}

export interface NetlistMapping {
  origin: string;
  short: string;
}

export interface NetListDictionary {
  [key: string]: NetlistMapping;
}

export type NetlistMappingProp = 'origin' | 'short';

export interface TruthTable {
  i: { [key: string]: number };
  o: { [key: string]: number };
}

export type TestListAsync = TruthTable[][];
export type TestListSync = TruthTable[];
export type TestList = TestListAsync | TestListSync;

export interface Tests {
  tests: TestList;
}

export interface TestsSync {
  tests: TestListSync;
}

export interface TestsAsync {
  tests: TestListAsync;
}

export interface Clock {
  fall: number;
  period: number;
  prop: string;
  rise: number;
  testsPerTick: number;
  width: number;
}

export interface TestsAsync {
  clock: string;
  clockRise?: number;
  clockFall?: number;
  clockWidth?: number;
  clockPeriod?: number;
  tests: TestListAsync;
  testsPerTick?: number;
}

export interface PwlDict {
  [key: string]: (number | string)[];
}

export function isTestListAsync(thing: any): thing is TestListAsync {
  if (!Array.isArray(thing)) {
    return false;
  }
  if (thing.length > 0) {
    if (!Array.isArray(thing[0])) {
      return false;
    }
  }
  return true;
}

export function isTestListSync(thing: any): thing is TestListSync {
  if (!Array.isArray(thing)) {
    return false;
  }
  return true;
}

export function isTestsSync(thing: any): thing is TestsSync {
  if (thing.clock) {
    return false;
  }
  return isTestListSync(thing.tests);
}

export function isTestsAsync(thing: any): thing is TestsAsync {
  if (!thing.clock) {
    return false;
  }

  return isTestListAsync(thing.tests);
}
