let o = {
    catId: 123,
    getId: function(){
        return this.carId;
    }
};

let newCar = { carId: 456};
let newFn = o.getId.bind(newCar);

console.log(newFn()); // 456
