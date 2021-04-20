try {
    let car = newCar;
}
catch(error){
    console.log('error', error); // error ReferenceError: newCar is not defined
}

console.log('continuing...');