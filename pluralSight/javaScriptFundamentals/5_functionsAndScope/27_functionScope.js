function startCar(carId) {
    let message = 'Starting...';
}

startCar(123);
// console.log(message); // Uncaught ReferenceError: message is not defined

function startCar2(carId) {
    let message = 'Starting...';
    let startFn = function turnKey() {
        console.log(message);  // Starting...
    };
    startFn();
}
startCar2(123);

function startCar3(carId) {
    let message = 'Starting...';
    let startFn = function turnKey() {
        let message = 'Override';
    };
    startFn();
    console.log(message); // Starting...
}
startCar3(123);
