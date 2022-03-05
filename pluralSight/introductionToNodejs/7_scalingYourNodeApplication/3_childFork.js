var fork = require('child_process').fork;

var child = fork(__dirname + '/honorstudent.js');

child.on('message', function (m) {
    console.log('The answer is:', m.answer);
    child.send({ cmd: 'done' });
});

child.send({ cmd: 'double', number: 20 });
