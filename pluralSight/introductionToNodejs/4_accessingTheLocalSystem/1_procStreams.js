process.stdin.resume();
process.stdin.setEncoding('utf-8');

process.stdin.on('data', function (chunk) {
    process.stdout.write('Data! -> ' + chunk);
});

process.stdin.on('end', function () {
    process.stderr.write('End!\n');
});
