package main

func main(){
  foo := new (myStruct)
  foo.myField = "bar"
  println(foo)
}

type myStruct struct{
  myField string
}
