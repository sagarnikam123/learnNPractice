var casper = require('casper').create();

casper.start('http://www.google.com', function(){
  var title = this.evaluate(function(){
    var title = document.title;
    return title;
  });
  console.log(title);
});
casper.run();
