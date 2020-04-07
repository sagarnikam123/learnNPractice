// Go program to illustrate the use of complex numbers
package main

import "fmt"

func main(){
  var a complex128 = complex(6,2)
  var b complex64 = complex(9, 2)
  fmt.Println(a)
  fmt.Println(b)

  // Display the type
  fmt.Printf("The type of a is %T and "+
            "The type of b is %T \n", a, b)
}
