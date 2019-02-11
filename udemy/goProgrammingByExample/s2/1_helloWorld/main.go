package main

import "fmt"

// I am a line comment!

/* I am a
multi -line
comment!
I'm being ignored by
the compiler :()
*/

func main(){
  fmt.Println(`Hello World`)  // using Backtick
  //  invalid character literal (more than one character)
  // fmt.Println('Hello World')  // using single quote
  gh := [...]int{1, 2, 3, 4, 5, 6, 7}

  fmt.Println(gh)
  fmt.Println("length :- ", len(gh[1:3]))
  fmt.Println("capacity :-", cap(gh[1:3]))
  ph := &gh
  fmt.Println("Pointer :- ", type(3 ))
}
