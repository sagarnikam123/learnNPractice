package main

import (
	"fmt"
)

func main() {

	switch "docker" {
	case "linux":
		fmt.Println("\nHere are some recommended" +
			" Linux courses...")
	case "docker":
		fmt.Println("\nHere are some recommended" +
			" Docker courses...")
		fallthrough
	case "windows":
		fmt.Println("\nHere are some recommended" +
			" Windows courses...")
		fallthrough
	default:
		fmt.Println("\nSorry, we couldn't find a match," +
			" why not try our Top 100 list!...")

	}
}
