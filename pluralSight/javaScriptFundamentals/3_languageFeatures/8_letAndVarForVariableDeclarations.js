// undefined
// [WDS] Warnings while compiling
console.log(carId);
var carId = 100;

// Uncaught ReferenceError: carId is not defined
console.log(carId);
let carId = 100;

// Uncaught ReferenceError: carId is not defined
if (true){
  let carId = 100;
}
console.log(carId);

// 100
if (true){
  var carId = 100;
}
console.log(carId);
