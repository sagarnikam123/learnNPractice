var mathfun = require('./mathfun');

var processResults = function (err, results, time) {
    if (err) {
        console.log("ERROR: " + err.message + " " + results + " (" + time + " ms)");
    }
    else {
        console.log("The results are: " + results + " (" + time + " ms)");
    }
};

for (var i = 0; i < 10; i++) {
    console.log("Calling evenDoubler with parameter: " + i);
    mathfun.evenDoubler(i, processResults);
}

console.log("-----");

console.log("The 'foo' variable from module 'mathfun' = " + mathfun.foo);

console.log("The 'maxtime' variable is not exported: " + mathfun.maxTime);
