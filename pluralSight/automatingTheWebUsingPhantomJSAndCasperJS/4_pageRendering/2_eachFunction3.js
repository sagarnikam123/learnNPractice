var casper = require('casper').create()

var urls = ["http://www.google.com", "http://www.bing.com"];
var viewportSizes = [480, 720, 1200];

casper.start();

casper.each(urls, function(self, item ,index){

  self.thenOpen(item, function(){
    var title = self.getTitle();
    console.log(title);

    this.wait(2000, function(){
      this.capture('./images/screenshot_' + index + '.png');
    });

  });
});

casper.run();
