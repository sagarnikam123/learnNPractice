// Immediately Invoked Function Expression

(function () {
    console.log('in function');
})();

let app = (function () {
    let carId = 123;
    console.log('in function 2');
    return {};
})();

console.log(app);