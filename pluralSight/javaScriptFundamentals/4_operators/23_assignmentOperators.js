let year = 1954;
year += 10;
console.log(year);
year -= 10;
console.log(year);

// shift 1 bit to right (same as dividing by 2)
year >>= 1;
console.log('shift 1 bit to right-', year);

// shift 1 bit to left (same as multiplying by 2)
year <<= 1;
console.log('shift 1 bit to left-',year);
