class Car {
    constructor(id){
        this.id = id;
    }

    identify(suffix) {
        return `Car Id: ${this.id} ${suffix}`;
    }
}

let car = new Car(123);
console.log(car.identify('!!!'));
