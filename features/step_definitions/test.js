
var MetaBuilder = require('cucumber-mink').Utils.MetaBuilder;

module.exports = function() {
//  this.Given(/^I am an anonymous user$/, anon);

  this.Given(/^I am an anonymous user$/, function (callback) {
         // Write code here that turns the phrase above into concrete actions
         callback(null, 'pending');
       });

}
;


function anon() {
console.log('hello world');
}
