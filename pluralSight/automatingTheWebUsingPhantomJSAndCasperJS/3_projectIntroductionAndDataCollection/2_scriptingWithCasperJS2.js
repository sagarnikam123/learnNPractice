var casper = require('casper').create();
casper.echo('hello world', 'WARNING')
casper.exit();
