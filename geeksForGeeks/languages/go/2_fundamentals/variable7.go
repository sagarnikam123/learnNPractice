// Go program to illustrate the concept of variable
package main

import "fmt"

func main(){
  //Using shor variable declaration.
  // Here, short variable declaration acts as an assignment
  // for myvar2 variable because same variable present in the same block
  // so the value of myvar2 is changed from 45 to 100
  myvar1, myvar2 := 39, 45
  myvar3, myvar2 := 45, 100

  // If you try to run the commented lines, the compiler will gives error because
  // these variables are already defined
  //myvar1, myvar2 := 43, 47
  //myvar2 := 200

  // Display the values of the variables
  fmt.Printf("The value of myvar1 and myvar2 is : %d %d\n" , myvar1, myvar2)
  fmt.Printf("The value of myvar3 and myvar2 is : %d %d \n", myvar3, myvar2)
}
