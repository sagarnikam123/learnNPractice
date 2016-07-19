var casper = require('casper').create();
casper.echo('hello world', 'ERROR')
casper.exit();
