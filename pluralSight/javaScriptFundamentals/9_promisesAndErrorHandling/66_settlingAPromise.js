let promise = new Promise(
    function(resolve, reject){
        //setTimeout(reject, 100, 'some value');
        setTimeout(resolve, 100, 'some value');
    }
);

promise.then(
    value => console.log('fulfilled:' + value),
    error => console.log('rejected:' + error)
);