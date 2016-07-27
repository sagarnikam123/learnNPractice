var casper = require('casper_base');

casper.on('resource.received', function(resource){
  console.log(resource);
});

casper.start('http://www.google.com');
casper.run();
