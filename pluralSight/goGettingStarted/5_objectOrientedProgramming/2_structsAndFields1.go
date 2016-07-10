package main

func main(){
  foo := myStruct{}
  foo.myField = "bar"
  println(foo.myField)
}

type myStruct struct{
  myField string
}
