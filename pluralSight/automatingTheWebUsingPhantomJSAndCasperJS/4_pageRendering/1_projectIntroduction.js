var casper = require('casper').create()

var urls = ["http://www.google.com", "http://www.bing.com"];
var viewportSizes = [480, 720, 1200];

console.log(urls);
console.log(viewportSizes);

casper.exit();
