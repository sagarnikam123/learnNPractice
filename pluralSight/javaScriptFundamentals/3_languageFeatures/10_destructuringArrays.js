// 100 200
let carIds = [100, 200, 300];
let [car1, car2] = carIds;
console.log(car1, car2);

// 100 200 [300]
let carIds = [100, 200, 300];
let [car1, car2,  ...theRest] = carIds;
console.log(car1, car2, theRest);

// undefined 200 [300]
let carIds = [100, 200, 300];
let car1, car2, theRest;
[, car2,  ...theRest] = carIds;
console.log(car1, car2, theRest);

// 100 200 [300]
let carIds = [100, 200, 300];
let car1, car2, theRest;
[car1, car2,  ...theRest] = carIds;
console.log(car1, car2, theRest);
