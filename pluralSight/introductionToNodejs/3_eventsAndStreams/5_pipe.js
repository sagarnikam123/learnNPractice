var request = require('request');
var fs = require('fs');
var zlib = require('zlib');

/*
var s = request('https://www.pluralsight.com');
s.pipe(process.stdout);
*/

//request('https://www.pluralsight.com').pipe(process.stdout);

//request('https://www.pluralsight.com').pipe(fs.createWriteStream('pluralsight.html'));

request('https://www.pluralsight.com').pipe(zlib.createGzip()).pipe(fs.createWriteStream('pluralsight.html.gz'));
// to visualize the content of .gz files
// zcat pluralsight.html.gz
