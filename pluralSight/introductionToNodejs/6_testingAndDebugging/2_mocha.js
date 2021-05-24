var should = require('should');
var fun = require('./mathfun');

describe('Mathfun', function () {

    describe('when used synchronously', function () {
        // it.only('should double even numbers correctly', function () {
        // it.skip('should double even numbers correctly', function () {
        it('should double even numbers correctly', function () {
            fun.evenDoublerSync(2).should.equal(4);
        });

        it('should throw on odd numbers', function (done) {
            (function () { fun.evenDoublerSync(3) }).should.throw(/Odd/);
            done();
        });
    });



    describe('when used asynchronously', function () {

        it('should double even numbers correctly', function (done) {
            fun.evenDoubler(2, function (err, results) {
                should.not.exist(err);
                results.should.equal(4);
                done();
            });
        });

        it('should return error on odd numbers', function (done) {
            fun.evenDoubler(5, function (err, results) {
                should.exist(err);
                //should.not.exist(results); // not as per tutorials
                done();
            });
        });
    });

});