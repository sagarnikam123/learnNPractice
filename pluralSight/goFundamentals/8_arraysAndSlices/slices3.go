package main

import "fmt"

func main() {

	//Declares a slice called myCourses
	mySlices := []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	fmt.Println(mySlices[4])

	mySlices[1] = 0
	fmt.Println(mySlices)

	sliceOfSlice := mySlices[2:5]
	fmt.Println(sliceOfSlice)
}
