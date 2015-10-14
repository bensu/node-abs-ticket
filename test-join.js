#!/usr/bin/env node

var path = require('path');

function testPath(p) {
    return [
        'path.join(path.resolve("."),"' + p + '","goog","base.js")',
        path.join(path.resolve("."), p,"goog","base.js") + '\n',
        'path.resolve("' + p + '","goog","base.js")',
        path.resolve(p, "goog","base.js") + '\n',
        'path.resolve(".", "' + p + '","goog","base.js")',
        path.resolve(".",p,"goog","base.js")
    ].join("\n");
}
console.log("Relative path\n");
console.log(testPath("out"));

console.log("\nAbsolute path\n");
console.log(testPath("/home/out"));


