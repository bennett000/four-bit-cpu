#!/usr/bin/env node

/**
 * tc.js (Tran Collapse)
 * Collapses transient analysis output from ngspice
 */

 main();

function main() {
  const inputObj = { data: '' };

  process.stdin.setEncoding('utf8');
  process.stdin.on('readable', createOnReadable(inputObj));
  process.stdin.on('end', createOnEnd(inputObj));
}

function createOnEnd(inputObj) {
  return () => {
    const groupedOutput = groupOutput(inputObj.data);
    let lastData = '';

    process.stdout.write(groupedOutput.start.join('\n'));
    process.stdout.write('\n');
    process.stdout.write(groupedOutput.transient.headers.join('\t'));
    process.stdout.write('\n');

    Object.keys(groupedOutput.transient.values).forEach((key) => {
      const data = groupedOutput.transient.values[key].slice(2).join('\t');
      if (data === lastData) {
        // don't print
      } else {
        process.stdout.write(groupedOutput.transient.values[key].join('\t'));
        process.stdout.write('\n');
      }
      lastData = data;
    });

    process.stdout.write(groupedOutput.end.join('\n'));
    process.stdout.write('\n');
  };
}

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

  lines.forEach((line) => {
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
        heads.forEach((head) => {
          if (groupedOutput.transient.headers.indexOf(head) === -1) {
            groupedOutput.transient.headers.push(head);
          }
        });
      } else {
        const fields = splitTabs(line);
        if (!groupedOutput.transient.values[fields[0]]) {
          groupedOutput.transient.values[fields[0]] = fields;
        } else {
          groupedOutput.transient.values[fields[0]] = 
            groupedOutput.transient.values[fields[0]].concat(fields.slice(2));
        }
      }
    } else {
      groupedOutput.end.push(line);
    }
  });

  return groupedOutput;
}

function splitTabs(string) {
  return string.split(' ').filter(Boolean).join('\t').split('\t').filter(Boolean);
}

function createOnReadable(inputObj) {
  return () => {
    let chunk;
    // Use a loop to make sure we read all available data.
    while ((chunk = process.stdin.read()) !== null) {
      if (chunk) {
        inputObj.data += chunk;
      }
    }

  }
}
