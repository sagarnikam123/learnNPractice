let carIds = [
    {carId: 123, style: 'sedan'},
    {carId: 456, style: 'convertible'},
    {carId: 789, style: 'sedan'}
];

carIds.forEach(car => console.log(car));

carIds.forEach( (car, index) => console.log(car, index) );

let result = carIds.every( car => car.carId > 0);
console.log(result);


let convertibles = carIds.filter(
    car => car.style == 'convertible'
);
console.log(convertibles);


let vanIds = [
    {vanId: 123, style: 'sedan'},
    {vanId: null, style: 'convertible'},
    {vanId: 789, style: 'sedan'}
];
let vanResult = vanIds.every(van => van.vanId > 0);
console.log(vanResult);

let findResult = carIds.find(car.carId > 500);
console.log(findResult);

let findResult = carIds.find(car => car.carId > 500);
console.log(findResult);
