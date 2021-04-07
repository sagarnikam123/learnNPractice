// string to int
console.log(Number.parseInt('55'));
console.log(typeof(Number.parseInt('55')));
console.log(Number.parseInt('55ABC'));

// string to float
console.log(Number.parseFloat('55.88'));
console.log(Number.parseFloat('55.88ABC'));

// NaN
console.log(Number.parseFloat('ABC55.88ABC'));
console.log(Number.parseFloat('----'));

// to String
let abc = 1;
console.log(typeof(abc.toString()));