package main

import (
	"fmt"
	"time"
)

func main() {
	t := time.Now()

	switch {
	case t.Hour() < 12:
		fmt.Println("Good Morning.")
	case t.Hour() < 17:
		fmt.Println("Good Afternoon")
	default:
		fmt.Println("Good Evening.")

	}
}
