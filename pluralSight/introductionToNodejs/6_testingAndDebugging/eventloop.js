var handleTimeout = function(){
    console.log("Timeout at 200 ms");
};

setTimeout(handleTimeout, 200);
console.log("Running!");