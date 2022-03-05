let getId = (prefix, suffix) => {
    return prefix + 123 + suffix;
};

console.log(getId('ID: ', '!'));

let getId2 = (prefix, suffix) => prefix + 456 + suffix;
console.log(getId2('ID: ', '!'));

let getId3 = () => 789;
console.log(getId3());

let getId4 = _ => 8910;
console.log(getId4());
