// general
console.log('Hello World!');
global.luckyName = 23;
console.log(global.luckyName);
console.log(process.platform);
console.log(process.env.USER);

console.log('------------------------------------------');
// Events-callbacks
process.on('exit', function(){
    console.log('This is call back on EXIT');
});

const { EventEmitter } = require('events');
const eventEmitter = new EventEmitter();

eventEmitter.on('lunch', () => {
    console.log('Yummy-Lunch is ready');
});

eventEmitter.emit('lunch');
eventEmitter.emit('lunch');

console.log('------------------------------------------');
// File System
const { readFile, readFileSync} = require('fs');
const fileTextSync = readFileSync('hello.txt', 'utf-8');
console.log(fileTextSync);
console.log('do this ASAP-Sync file reading')

const fileText = readFile('hello.txt','utf-8', (err, txt)=>{
    console.log('after reading async file');
    console.log(txt);
});
console.log('do this ASAP-Async file reading...')
console.log('------------------------------------------');


const my_module = require('/home/tetra/Documents/git/learnNPractice/youTube/fireship/node.js/my-module');
console.log(my_module);
// --------------------------------------------------------
