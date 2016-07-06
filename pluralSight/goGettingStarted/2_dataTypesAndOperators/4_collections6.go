package main

import "fmt"
func main(){
  myMap := make(map[int]string)

  fmt.Println(myMap)

  myMap[42] = "Foo"
  myMap[12] = "Bar"

  fmt.Println(myMap)
  fmt.Println("Value for 42 Key - ",myMap[42])
  fmt.Println("Value of unknown key - ", myMap[99])

}
