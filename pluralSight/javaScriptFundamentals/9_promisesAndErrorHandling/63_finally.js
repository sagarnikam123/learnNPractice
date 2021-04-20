try {
    let car = null;
}
catch(error) {
    console.log('error', error); // error ReferenceError: newCar is not defined
}
finally {
    console.log('this always executes');
}