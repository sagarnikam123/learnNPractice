if (5 == 5) {
    let message = 'Equal';
}
// console.log(message); // Uncaught ReferenceError: message is not defined

if (5 == 5) {
    var message = 'Equal';
}
console.log(message); // Equal

let message2 = 'Outside';
if (5 == 5) {
    let message2 = 'Equal';
    console.log(message2); // Equal
}
console.log(message2); // Outside

var message3 = 'Outside';
if (5 == 5) {
    var message3 = 'Equal';
    console.log(message3); // Equal
}
console.log(message3); // Equal