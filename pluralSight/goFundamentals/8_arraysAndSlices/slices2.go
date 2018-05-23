package main

import "fmt"

func main() {

	myCourses := []string{"Docker", "Puppet", "Python"}
	fmt.Printf("Length is : %d. \nCapacity is : %d\n", len(myCourses), cap(myCourses))

}
