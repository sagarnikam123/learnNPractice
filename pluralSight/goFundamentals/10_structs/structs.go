package main

import (
	"fmt"
)

func main() {

	type courseMeta struct {
		Author string
		Level  string
		Rating float64
	}

	//var DockerDeepDive courseMeta
	//DockerDeepDive := new(courseMeta)

	DockerDeepDive := courseMeta{
		Author: "Nigel Poulton",
		Level:  "Intemediate",
		Rating: 5,
	}
	fmt.Println("\nDocker Deep Dive author is:", DockerDeepDive.Author)
	fmt.Println("\nDocker Deep Dive Rating is:", DockerDeepDive.Rating)
}
