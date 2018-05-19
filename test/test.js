var casper = require('casper').create();
casper
.start('https://www.shu.global/home')
.then( function() {
  this.echo('Title => ', typeof(this), typeof(JSON) );
})
.run();