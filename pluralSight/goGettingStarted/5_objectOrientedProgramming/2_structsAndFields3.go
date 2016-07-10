package main

func main(){
  foo := new (myStruct)
  foo.myField = "bar"
  println(foo.myField)
}

type myStruct struct{
  myField string
}
