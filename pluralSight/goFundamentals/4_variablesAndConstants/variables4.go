package main

import (
	"fmt"
	"os"
)

func main() {

	name := os.Getenv("LOGNAME")
	course := "Docker Deep Dive" // Course being viewed

	fmt.Println("\n Hi", name, "you are currently watching", course)
	changeCourse(&course)
	fmt.Println("\n Now you are watching course", course)
}

func changeCourse(course *string) string {
	*course = "First Look : Native Docker Clustering"
	fmt.Println("\n Trying to change your course to", *course)
	return *course
}
