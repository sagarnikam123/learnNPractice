class Car {
    constructor(id){
        this.id = id;
    }
}

let car = new Car(123);
console.log(car.id); // 123
car.id = 456;
console.log(car.id); // 456
