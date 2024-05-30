// Generated by CoffeeScript 2.0.0
(function() {
  var assert, gqpublicip;

  gqpublicip = require('../index.js');

  assert = require('assert');

  it("should be able to get public ip", function(done) {
    return gqpublicip.getPublicIp(null, function(e, ip) {
      console.log(ip);
      assert(ip);
      return done(e);
    });
  });

  it("should be able to get private ip", function(done) {
    return gqpublicip.getPrivateIp(null, function(e, ip) {
      console.log(ip);
      assert(ip);
      return done(e);
    });
  });

}).call(this);

//# sourceMappingURL=test.js.map
