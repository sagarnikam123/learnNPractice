package main

import (
	"fmt"
	"reflect"
)

func main() {

	name := "Nigel" // Name of subscribe
	//course := "Docker Deep Dive" // Course being viewed
	module := 3.2 // Current position in course
	ptr := &module

	fmt.Println("Name is set to", name, "and is of type", reflect.TypeOf(name))
	fmt.Println("Module is set to", module, "and is of type", reflect.TypeOf(module))
	fmt.Println("Memory address of *module* variable is",
		ptr, "and the value of *module* is", *ptr)
}
