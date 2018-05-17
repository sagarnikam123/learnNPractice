package main

import (
	"fmt"
)

func main() {

	if firstRank, secondRank := 391, 614; firstRank < secondRank {
		fmt.Println("\nFirst course is doing better" +
			" than second course")
		if firstRank > 100 {
			fmt.Println("Err, you many wanna" +
				" consider another job :-D ")
		}
	} else if firstRank > secondRank {
		fmt.Println("\nOh dear .... your first" +
			"course must be doing abysmally !")
		if secondRank > 100 {
			fmt.Println("Err, you many wanna" +
				" consider another job :-D ")
		}
	} else {
		fmt.Println("\nBoth courses are either" +
			"the same or something weird is going on")
	}

}
