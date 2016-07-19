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
  var data = this.evaluate(function(){
    var targetElements = document.querySelectorAll('.g h3 a');
    var data = [];

    for (var index = 0; index < targetElements.length; index++){
      var currentEl = targetElements[index];
      var currentLink = currentEl.getAttribute('href');
      var currentTitle = currentEl.text;
      var currentItem = {
        'link' : currentLink,
        'title' : currentTitle,
      };
      data.push(currentItem);
    }
    return data;
  });
  console.log(JSON.stringify(data))
});

casper.run();
