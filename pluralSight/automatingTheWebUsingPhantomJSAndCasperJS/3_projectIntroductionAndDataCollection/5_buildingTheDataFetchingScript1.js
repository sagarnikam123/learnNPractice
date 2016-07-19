var casper = require('casper').create();

casper.start('http://www.google.com', function(){
  this.fill('form', {q : 'hello world!'}, true);
});

casper.then(function(){
  this.capture('../3_projectIntroductionAndDataCollection/output/searchResult1.jpeg')
});

casper.run();
