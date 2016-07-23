package main

import "fmt"
func main(){

  myArray := [...]int {42, 27, 99,43}

  mySlice := myArray[:]
  fmt.Println(myArray)

  mySlice = append(mySlice, 100)

  fmt.Println(myArray)
  fmt.Println(mySlice)

}
