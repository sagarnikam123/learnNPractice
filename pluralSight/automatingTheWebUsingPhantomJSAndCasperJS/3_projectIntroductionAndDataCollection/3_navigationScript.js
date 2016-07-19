var casper = require('casper').create();
casper.start('http://www.google.com/' , function(){
  this.capture('../3_projectIntroductionAndDataCollection/output/test1.png');
} )

casper.thenOpen('http://www.bing.com/', function(){
  this.capture('../3_projectIntroductionAndDataCollection/output/test2.png')
})
casper.run();
