package main

import (
	"fmt"
	"os"
)

func main() {

	// _, err := os.Open("/home/quanta/testNotFound.txt")
	_, err := os.Open("/home/quanta/test.txt")

	if err != nil {
		fmt.Println("Error returned was :", err)
	}
	fmt.Println("Error returned was :", err)
}
