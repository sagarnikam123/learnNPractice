// not working perfectly/half working
var casper = require('casper_base');
var utils = require('utils');
var brokenResourceExists = false;
var urlState = {};

var urls = [
  'https://web.archive.org/web/20010331101744/http://www.bbc.co.uk/?ok',
  'https://web.archive.org/web/20010405065637/http://www.bbc.co.uk/?ok',
  'htpp://www.google.com',
  'http://www.bing.com',
];

casper.on('resource.received', function(resource){
  if(resource.stage === 'end' && resource.status > 400){
    utils.dump(resource.url);
    brokenResourceExists = true;
  }
});

casper.start();
casper.each(urls, function(self, url, index){
  self.thenOpen(url, function(){
    urlState[url] = borkenResourceExists;
  });
  self.then(function(){
    brokenResourceExists = false;
  });

});

casper.run(function(){
  utils.dump(urlState);
  this.exit();
});
