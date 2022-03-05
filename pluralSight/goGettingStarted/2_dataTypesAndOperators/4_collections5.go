package main

import "fmt"
func main(){

  mySlice := make([]float32, 100)
  mySlice[0] = 12.
  mySlice[1] = 15.
  mySlice[2] = 18.

  fmt.Println(mySlice)
  fmt.Println(len(mySlice))

}
