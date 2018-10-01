// 1
// 2
// 3
function sendCars(day, ...carIds) {
  carIds.forEach( id => console.log(id));
}
sendCars('Monday', 1, 2, 3);

// Module parse failed: Comma is not permitted after the rest element
function sendCars(...carIds, day) {
  carIds.forEach( id => console.log(id));
}
sendCars('Monday', 1, 2, 3);
