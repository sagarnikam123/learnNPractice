package main

import "fmt"

func main() {

	pow := make([]int, 10)

	for i := range pow {
		pow[i] = 1 << uint(i) // == 2**i
		//fmt.Printf("i-- %d  , %d \n", i, (1 << uint(i)))
	}

	for _, value := range pow {
		fmt.Printf("%d \n", value)
	}
}
