// Go program to illustrate concept of variable
package main

import "fmt"

func main(){
  // Multiple variable of different types are declared and
  // initialized in single line
  var myvariable1, myvariable2, myvariable3 = 2, "GFG", 67.56

  // Display the value and type of the variables
  fmt.Printf("The value of myvariable1 is : %d\n", myvariable1)
  fmt.Printf("The type of myvariable1 is : %T\n", myvariable1)
  fmt.Printf("\nThe value of myvariable2 is : %s\n", myvariable2)
  fmt.Printf("The type of myvariable2 is : %T\n", myvariable2)
  fmt.Printf("\nThe value of myvariable3 is : %f\n", myvariable3)
  fmt.Printf("The type of myvariable3 is : %T\n", myvariable3)
}
