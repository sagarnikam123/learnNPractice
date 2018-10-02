// 1 2 3
function startCars(car1, car2, car3){
  console.log(car1, car2, car3);
}
let carIds = [1, 2, 3];
startCars(...carIds);

// [4, 5, 6]
function startCars(car1, car2, car3, ...rest){
  console.log(rest);
}
let carIds = [1, 2, 3, 4, 5, 6];
startCars(...carIds);
