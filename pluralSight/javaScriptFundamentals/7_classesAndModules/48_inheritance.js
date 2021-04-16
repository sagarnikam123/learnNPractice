class Vehicle {
    constructor(){
        this.type = 'car';
    }
    start(){
        return `Starting: ${this.type}`;
    }
}

class Car extends Vehicle{

}

let car = new Car();
console.log(car.type); // car

class Car2 extends Vehicle{
    constructor(){
        super();
    }
}
let car2 = new Car2();
console.log(car2.type); // car

class Car3 extends Vehicle{
    start(){
        return 'in car start ' + super.start();
    }
}
let car3 = new Car3();
console.log(car3.start()); // in car start Starting: car