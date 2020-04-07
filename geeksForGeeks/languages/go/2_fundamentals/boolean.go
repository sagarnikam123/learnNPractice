// Go program to illustrate the use of booleans
package main

import "fmt"

func main(){
  // variables
  str1 := "GeeksforGeeks"
  str2 := "geeksForgeeks"
  str3 := "GeeksforGeeks"
  result1 := str1 == str2
  result2 := str1 == str3

  // Display the result
  fmt.Println(result1)
  fmt.Println(result2)

  // Display the type of result1 & result2
  fmt.Printf("The type of result1 is %T and "+
              "The type of result2 is %T \n", result1, result2)
}
