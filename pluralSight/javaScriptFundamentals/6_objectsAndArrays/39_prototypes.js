function Car(id) {
    this.carId = id;
}

Car.prototype.start = function() {
    console.log('start-vart: ' + this.carId);
};

let car = new Car(123);
car.start();