import {
  NetlistMapping,
  NetlistMappingProp,
  TestAsyncInput,
} from './interfaces';
/**
 * Optimizes a netlist for easier more accurate parsing
 */

export function optimizeNetlist(netlistLines: string[]): TestAsyncInput {
  const netlist = netlistLines.join('\n');
  const map = tokenMap(netlist);
  const optimized = replaceWithMap(netlist, map, 'origin', 'short');

  return { map, optimized: optimized.split('\n') };
}

function tokenMap(netlist: string) {
  const tokens = netlist
    .replace(/\n/g, ' ')
    .split(' ')
    .filter(Boolean);
  const unique = getUniqueTokens(tokens);
  const map = reduceSlashTokens(unique);
  return map;
}

function getUniqueTokens(tokens: string[]) {
  return Object.keys(
    tokens.reduce((dict: { [key: string]: boolean }, token) => {
      if (dict[token] === undefined) {
        dict[token] = true;
      }
      return dict;
    }, {}),
  );
}

function reduceSlashTokens(uniqueTokens: string[]) {
  const incObj = { count: 0 };
  const mapped = uniqueTokens.map(createSlashMapper(incObj));
  return uniqueTokens.reduce((slashMap: NetlistMapping[], token, i) => {
    if (token === mapped[i]) {
      return slashMap;
    }
    slashMap.push({
      origin: token,
      short: mapped[i],
    });
    return slashMap;
  }, []);
}

function createSlashMapper(incObj: { count: number }) {
  return (token: string) => {
    if (token.indexOf('/') === 0) {
      // only map the tokens starting with a /
      incObj.count += 1;
      return 't' + incObj.count.toString(32);
    }

    return token;
  };
}

function replaceWithMap(
  list: string,
  map: NetlistMapping[],
  source: NetlistMappingProp,
  dest: NetlistMappingProp,
) {
  return map.reduce((newList, mapping) => {
    if (mapping[source] === mapping[dest]) {
      return newList;
    }
    const rexp = new RegExp(mapping[source], 'g');
    newList = newList.replace(rexp, mapping[dest]);
    return newList;
  }, list);
}
