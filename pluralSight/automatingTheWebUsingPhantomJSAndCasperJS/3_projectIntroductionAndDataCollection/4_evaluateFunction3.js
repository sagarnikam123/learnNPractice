var casper = require('casper').create();

casper.on('remote.message', function(msg){
  console.log('remote message is : '+ msg);
});

casper.start('http://www.google.com', function(){
  var title = this.evaluate(function(){
    var title = document.title;
    console.log(title);
  });
});
casper.run();
