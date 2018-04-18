package main

import "fmt"

func main() {
	var s []int
	printSlices(s)

	// apend works on nil slices
	s = append(s, 0)
	printSlices(s)

	// The slice grows as needed
	s = append(s, 1)
	printSlices(s)

	// We can more than one element at a time
	s = append(s, 2, 3, 4)
	printSlices(s)
}

func printSlices(s []int) {
	fmt.Printf("len=%d cap=%d %v \n", len(s), cap(s), s)
}
