package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {

	switch tmpNum := random(); tmpNum {
	case 0, 2, 4, 6, 8:
		fmt.Println("We got an even number - ", tmpNum)
	case 1, 3, 5, 7, 9:
		fmt.Println("We got an odd number - ", tmpNum)
	}
}

func random() int {
	rand.Seed(time.Now().Unix())
	return rand.Intn(10)
}
