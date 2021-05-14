var maxTime = 1000;

// If input is even, double it
// If input is odd, error
// (call takes random amount of time < 1s)

var evenDoubler = function (v, callback) {
    var waitTime = Math.floor(Math.random() * (maxTime + 1));
    if (v % 2) {
        setTimeout(function () {
            callback(new Error("Odd input"), v, waitTime);
        }, waitTime);
    } else {
        setTimeout(function () {
            callback(null, v * 2, waitTime);
        }, waitTime);
    }
}

var handleResults = function (err, results, time) {
    if (err) {
        console.log("ERROR: " + err.message + " " + results + " (" + time + " ms)");
    }
    else {
        console.log("The results are: " + results + " (" + time + " ms)");
    }
};

for (var i = 0; i < 10; i++) {
    console.log("Calling evenDoubler for value: " + i);
    evenDoubler(i, handleResults);
}

console.log("-----");