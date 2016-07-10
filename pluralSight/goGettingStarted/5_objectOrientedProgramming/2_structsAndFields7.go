package main

import "fmt"

func main(){
  foo := &myStruct{"bar"}
  fmt.Println(foo)
}

type myStruct struct{
  myField string
}
