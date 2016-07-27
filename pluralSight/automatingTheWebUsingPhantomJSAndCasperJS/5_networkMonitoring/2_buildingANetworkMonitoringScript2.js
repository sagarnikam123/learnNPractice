var casper = require('casper_base');
var utils = require('utils');

casper.on('resource.received', function(resource){
  utils.dump(resource.url);
});

casper.start('http://www.google.com');
casper.run();
