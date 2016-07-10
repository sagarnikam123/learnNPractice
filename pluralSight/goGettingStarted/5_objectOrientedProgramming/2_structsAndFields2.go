package main

func main(){
  foo := myStruct{"bar"}
  println(foo.myField)
}

type myStruct struct{
  myField string
}
