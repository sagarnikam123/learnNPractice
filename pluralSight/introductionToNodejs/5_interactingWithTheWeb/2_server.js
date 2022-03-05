var fs = require('fs');
var http = require('http');

http.createServer(function (req, res) {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    if (req.url === '/file.txt') {
        fs.createReadStream(__dirname + '/file.txt').pipe(res);
    } else {
        res.end("Hello world");
    }
}).listen('3000', '127.0.0.1');

console.log('Server running... at http://127.0.0.1:3000');
