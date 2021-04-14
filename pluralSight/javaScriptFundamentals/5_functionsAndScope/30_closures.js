let app = (function(){
    let carId = 123;
    let getId = function() {
        return carId;
    };
    return {
        getId : getId
    };
})();

console.log(app.getId());