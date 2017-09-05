#!/usr/bin/env node

const exec = require('child_process').exec;
const os = require('os');
let execScript = "";
switch (os.platform()) {
    case "linux":
    case "darwin":
        execScript += "./dist/dogCLI ";
        break;
    case "win32":
        execScript += ".\\dist\\dogCLI.exe ";
        break;
}



for (let i = 0; i < process.argv.length; i++) {
    execScript += process.argv[i];
}
var child = exec(execScript, function (err, stdout, stderr) {
    if (err) {
        throw err;
    };
    console.log(stdout);
});