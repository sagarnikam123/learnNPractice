// Go program to illustrate concept of variable
package main

import "fmt"

func main(){
  // Variable declared and initialized without
  // the explicit type
  var myvariable1 = 20
  var myvariable2 = "GeeksforGeeks"
  var myvariable3 = 34.80

  // Display the value and the type of the variables
  fmt.Printf("The value of myvariable1 is : %d\n", myvariable1)
  fmt.Printf("The type of myvariable1 is : %T\n", myvariable1)
  fmt.Printf("The value of myvariable2 is : %s\n", myvariable2)
  fmt.Printf("The type of myvariable2 is : %T\n", myvariable2)
  fmt.Printf("The value of myvariable3 is : %f\n", myvariable3)
  fmt.Printf("The type of myvariable3 is : %T\n", myvariable3)
}
