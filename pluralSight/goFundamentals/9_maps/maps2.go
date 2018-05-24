package main

import "fmt"

func main() {

	testMap := map[string]int{"A": 1, "B": 2, "C": 3, "D": 4, "E": 5}

	for key, value := range testMap {
		fmt.Printf("\nKey is: %v Value is: %v", key, value)
	}
}
