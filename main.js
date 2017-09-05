#!/usr/bin/env node

const exec = require('child_process').exec;
let execScript = "./dist/dogCLI ";
for (let i = 0; i < process.argv.length; i++) {
    execScript += process.argv[i];
}
var child = exec(execScript, function (err, stdout, stderr) {
    if (err) throw err;
    console.log(stdout);
});