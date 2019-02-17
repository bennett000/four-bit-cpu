'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
function groupOutput(raw) {
  const lines = raw.split('\n');
  const groupedOutput = {
    start: [],
    transient: {
      headers: [],
      values: {},
    },
    end: [],
  };
  let mode = 'start';
  lines.forEach(line => {
    if (mode === 'start') {
      if (line.indexOf('Index') === 0) {
        mode = 'transient';
        groupedOutput.transient.headers = splitTabs(line);
      } else {
        groupedOutput.start.push(line);
      }
    } else if (mode === 'transient') {
      if (line.indexOf('---') === 0 || line.indexOf('\f') === 0) {
        // skip these lines
      } else if (line.indexOf('\n') === 0) {
        mode = 'other';
      } else if (line.indexOf('Index') === 0) {
        // check for new headers
        const heads = splitTabs(line);
        heads.forEach(head => {
          if (groupedOutput.transient.headers.indexOf(head) === -1) {
            groupedOutput.transient.headers.push(head);
          }
        });
      } else {
        const fields = splitTabs(line);
        if (!groupedOutput.transient.values[fields[0]]) {
          groupedOutput.transient.values[fields[0]] = fields;
        } else {
          groupedOutput.transient.values[
            fields[0]
          ] = groupedOutput.transient.values[fields[0]].concat(fields.slice(2));
        }
      }
    } else {
      groupedOutput.end.push(line);
    }
  });
  return groupedOutput;
}
exports.groupOutput = groupOutput;
function splitTabs(string) {
  return string
    .split(' ')
    .filter(Boolean)
    .join('\t')
    .split('\t')
    .filter(Boolean);
}
//# sourceMappingURL=transient-parser.js.map
