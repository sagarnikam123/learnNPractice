var casper = require('casper').create()

var urls = ["http://www.google.com", "http://www.bing.com"];
var viewportSizes = [480, 720, 1200];

casper.start();

var counter = 0;

casper.repeat(viewportSizes.length,function(){
  var viewportSize = viewportSizes[counter];

  // casper.viewport(width,height);
  casper.viewport(viewportSize, 1000).each(urls, function(self, item ,index){
    self.thenOpen(item, function(){
      var title = self.getTitle();
      console.log(title);
      this.wait(2000, function(){
        this.capture('./images/screenshot_' + index + '_'+viewportSize +'.png');
      });
    });
  });
  counter += 1;
});


casper.run();
