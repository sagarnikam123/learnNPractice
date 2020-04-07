// Go program to illustrate the use of floating-point numbers
package main

import "fmt"

func main(){
  a := 20.45
  b := 34.89
  // Subtraction of two floating-point numbers
  c := b - a
  // Display the result
  fmt.Printf("Result is %f", c)

  // Display the type of c variable
  fmt.Printf("\nThe type of c is %T \n", c)
}
