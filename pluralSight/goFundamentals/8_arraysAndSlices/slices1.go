package main

import "fmt"

func main() {
	//Declares a slice called myCourses
	myCourses := make([]string, 5, 10)
	fmt.Printf("Length is : %d. \nCapacity is : %d\n", len(myCourses), cap(myCourses))
}
