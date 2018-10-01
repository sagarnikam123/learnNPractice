// 5000 "convertible"
let car = {id : 5000, style: 'convertible'};
let {id, style} = car;
console.log(id, style);

// Module parse failed: Unexpected token
let car = {id : 5000, style: 'convertible'};
let id, style;
{id, style} = car;
console.log(id, style);

// 5000 "convertible"
let car = {id : 5000, style: 'convertible'};
let id, style;
({id, style} = car);
console.log(id, style);
