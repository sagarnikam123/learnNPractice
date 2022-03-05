let intervalId = setInterval( function(){
    console.log('1 second passed-setInterval');
}, 1000);

// if you need to cancel interval
// clearInterval(intervalId);

let timeoutId = setTimeout(function(){
    console.log('1 second passed-setTimeout');
}, 1000);

// clearTimeout(timeoutId);
