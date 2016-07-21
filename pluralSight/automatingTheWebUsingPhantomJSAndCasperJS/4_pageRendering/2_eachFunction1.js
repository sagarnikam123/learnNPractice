var casper = require('casper').create()

var urls = ["http://www.google.com", "http://www.bing.com"];
var viewportSizes = [480, 720, 1200];

casper.start();

casper.each(urls, function(self, item ,index){
  console.log(self, item, index);
});

casper.run();
