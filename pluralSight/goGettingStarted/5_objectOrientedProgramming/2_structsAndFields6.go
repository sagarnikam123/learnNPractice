package main

import "fmt"

func main(){
  foo := new (myStruct)
  foo.myField = "bar"
  fmt.Println(foo)
}

type myStruct struct{
  myField string
}
