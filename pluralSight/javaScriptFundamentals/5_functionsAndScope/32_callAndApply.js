let p = {
    carId : 789,
    getId : function(){
        return this.carId;
    }
};

let newCarLike = {carId: 999};
console.log(p.getId.call(newCarLike)); // 999

let o = {
    carId: 123,
    getId: function(prefix){
        return prefix + this.carId;
    }
};

let newCar = { carId: 456 };
console.log(o.getId.apply(newCar, ['ID:']) ); // ID:456