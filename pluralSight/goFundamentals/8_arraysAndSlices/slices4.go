package main

import "fmt"

func main() {
	mySlice := make([]int, 1, 4)
	fmt.Printf("Length is: %d, Capacity is: %d", len(mySlice), cap(mySlice))
	//fmt.Println("\nFirst element : ", mySlice[0])

	for i := 1; i < 17; i++ {
		mySlice = append(mySlice, i)
		fmt.Printf("\nCapacity is : %d", cap(mySlice))
		//fmt.Println("  Element : ", mySlice[i])
	}

}
