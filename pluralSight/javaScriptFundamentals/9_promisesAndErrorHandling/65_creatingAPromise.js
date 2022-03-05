let promise = new Promise(
    function(resolve, reject){
        //setTimeout(resolve, 100, 'someValue');
        setTimeout(reject, 100, 'someValue');
    }
);

console.log(promise);
