package main

import (
	"fmt"
)

func main() {
	// Variables to store course rankings
	firstRank := 39   //Docker Deep Dive
	secondRank := 614 // Docker clustering

	if firstRank < secondRank {
		fmt.Println("\nFirst course is doing better" +
			" than second course")
	} else if firstRank > secondRank {
		fmt.Println("\nOh dear .... your first" +
			"course must be doing abysmally !")
	} else {
		fmt.Println("\nBoth courses are either" +
			"the same or something weird is going on")
	}

}
