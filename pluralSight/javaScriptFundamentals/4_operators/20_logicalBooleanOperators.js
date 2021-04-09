// &&
if (5 == 5 && 6 == 7){
    console.log(true);
}
else {
    console.log(false);
}

if (5 == 5 && 6 == 6){
    console.log(true);
}
else {
    console.log(false);
}

// ||
if (5 == 3   || 6 == 6){
    console.log(true);
}else{
    console.log(false);
}

// with null
let userSettings = null;
let defaultSettings = { name: 'Default'};
console.log(userSettings || defaultSettings);

// with user object
let userSettings2 = {name : 'Joe'};
let defaultSettings2 = { name: 'Default'};
console.log(userSettings2 || defaultSettings2);

// with &&
let userSettings3 = {name : 'Joe'};
let defaultSettings3 = { name: 'Default'};
console.log(defaultSettings3 && userSettings3);

// negatiion
console.log(!true);
let car = null;
console.log(!car);

let truck = null;
if (!truck){
    truck = {name: 'TATA ACE'};
}
console.log(truck);