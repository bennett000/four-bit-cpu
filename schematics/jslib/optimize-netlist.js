/**
 * Optimizes a netlist for easier more accurate parsing
 */
const join = require('path').join;
module.exports.optimizeNetlist = optimizeNetlist;

// test
// console.log(optimizeNetlist(
//   require('fs')
//     .readFileSync(join(__dirname, '..', 'gate-xor-2-test.cir'), { encoding: 'utf8' })
//   ));

function optimizeNetlist(netlist) {
  const map = tokenMap(netlist);
  const optimized = replaceWithMap(netlist, map, 'origin', 'short');

  return { map, optimized };
}

function tokenMap(netlist) {
  const tokens = netlist.replace(/\n/g, ' ').split(' ').filter(Boolean);
  const unique = getUniqueTokens(tokens);
  const map = reduceSlashTokens(unique);
  return map;
}

function getUniqueTokens(tokens) {
  return Object.keys(tokens.reduce((dict, token) => {
    if (dict[token] === undefined) {
      dict[token] = true;
    }
    return dict;
  }, {}));
}

function reduceSlashTokens(uniqueTokens) {
  const incObj = { count: 0 };
  const mapped = uniqueTokens.map(createSlashMapper(incObj));
  return uniqueTokens.reduce((slashMap, token, i) => {
    slashMap.push({
      origin: token,
      short: mapped[i]
    });
    return slashMap;
  }, []);
}

function createSlashMapper(incObj) {
  return (token) => {
    if (token.indexOf('/') === 0) {
      // only map the tokens starting with a /
      incObj.count += 1;
      return 't' + incObj.count.toString(32); 
    }

    return token;
  };
}

function replaceWithMap(list, map, source, dest) {
  return map.reduce((newList, mapping) => {
    const rexp = new RegExp(mapping[source], 'g');
    newList = newList.replace(rexp, mapping[dest]);
    return newList;
  }, list);
}