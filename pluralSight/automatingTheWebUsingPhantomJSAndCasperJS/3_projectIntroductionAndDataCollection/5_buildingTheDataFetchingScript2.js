var casper = require('casper').create();

casper.start('http://www.google.com', function(){
  this.fill('form', {q : 'hello world!'}, true);
});

casper.wait(1000,function(){
  this.capture('../3_projectIntroductionAndDataCollection/output/searchResult2.jpeg')
});

casper.run();
