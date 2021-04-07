// break
let i = 0;

for(; i < 12; i++){
  if(i==8){
    break;
  }
}
console.log(i);

// break -2
for(let i = 0; i < 5; i++){
  console.log(i);
  if(i == 3)
  break;
}

// continue
for(let i = 0; i < 5; i++){
  if(i == 3)
  continue;
  console.log(i);
}