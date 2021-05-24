var assert = require('assert');
var fun = require('./mathfun');

assert.strictEqual(fun.evenDoublerSync(2), 4);
assert.throws(function () {
    fun.evenDoublerSync(3);
}, /Odd/);

fun.evenDoubler(2, function (err, results) {
    assert.ifError(err);
    assert.strictEqual(results, 4, "evenDoubler failed on even number");
});

fun.evenDoubler(3, function (err, results) {
    assert.notStrictEqual(err, null);
});