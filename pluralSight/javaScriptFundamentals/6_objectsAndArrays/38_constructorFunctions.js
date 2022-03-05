function Bar() {
    console.log(this);
}
Bar(); // Window {window: Window, self: Window, document: document, name: "", location: Location, …}

function Car(id) {
    this.carId = id,
    this.start = function() {
        console.log('start: ' + this.carId);
    };
}
let vehicle = new Car(123);
vehicle.start(); // start: 123
