try{
    throw new Error('my custom error');
}
catch(error){
    console.log('error', error);
}
finally{
    console.log('this always executes');
}