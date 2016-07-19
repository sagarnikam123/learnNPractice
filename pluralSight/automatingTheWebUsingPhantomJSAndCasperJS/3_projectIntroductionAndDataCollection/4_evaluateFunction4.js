var casper = require('casper').create();

casper.on('remote.message', function(msg){
  console.log('remote message is : '+ msg);
});

casper.start('http://www.google.com', function(){
  var title = this.getTitle();
  var currentURL = this.getCurrentUrl();
  console.log(title);
  console.log(currentURL);
});
casper.run();
