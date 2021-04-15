String.prototype.hello = function () {
    return this.toString() + ' hello';
};

console.log('foo'.hello()); // foo hello