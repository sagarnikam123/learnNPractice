var casper = require('casper').create()
var fs = require('fs')

if(fs.exists('../4_pageRendering/config.json') && fs.exists('../4_pageRendering/data.json')){
  var data = require('../4_pageRendering/data.json');
  var config = require('../4_pageRendering/config.json');
}else{
  capser.exit();
}

var urls = data.urls;
var viewportSizes = config.viewportSizes;

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
