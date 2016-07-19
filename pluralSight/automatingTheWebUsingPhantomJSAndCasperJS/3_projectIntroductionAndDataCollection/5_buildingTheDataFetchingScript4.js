var casper = require('casper').create();

casper.on('remote.message', function(msg){
  console.log('remote message is : ' + msg)
});

casper.start('http://www.google.com', function(){
  this.fill('form', {q : 'hello world!'}, true);
});

// find out current user agent on console
// window.navigator.userAgent

casper.wait(1000,function(){
  this.evaluate(function(){
    console.log(window.navigator.userAgent);
  });
});

casper.run();
