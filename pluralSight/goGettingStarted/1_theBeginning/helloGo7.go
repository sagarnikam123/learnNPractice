package main

import "fmt"

var (
  message string = "Hello World!"
)

func main(){
	fmt.Println(message)
}

func init(){
  message = "Hello Go!"
}
