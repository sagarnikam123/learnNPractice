var casper = require('casper').create();

casper.start('http://www.google.com', function(){
  var message = "the current page title is: ";

  var title = this.evaluate(function(message){
    var title = document.title;
    return message + title;
  }, message);
  console.log(title);
});
casper.run();
