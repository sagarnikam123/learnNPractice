var http = require('http');

var options = {
    host: 'www.google.com',
    port: 80,
    path: '/',
    method: 'GET'
};

console.log("Going to make request...");

// var req = http.request('http://www.google.com/', function(response){
var req = http.request(options, function (response) {
    console.log(response.statusCode);
    response.pipe(process.stdout);
});

req.end();

/*
// http.get(options, function(response){
http.get('http://www.pluralsight.com', function(response){ // 301
    console.log(response.statusCode);
    response.pipe(process.stdout);
});
*/