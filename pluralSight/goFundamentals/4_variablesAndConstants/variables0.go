package main

import (
	"fmt"
	"reflect"
)

var (
	// name, course, module = "Nigel", "Docker Deep Dive", 3.2
	name   = "Nigel"            // Name of subscribe
	course = "Docker Deep Dive" // Course being viewed
	module = 3.2                // Current position in course
)

func main() {

	fmt.Println("Name is set to", name, "and is of type", reflect.TypeOf(name))
	fmt.Println("Module is set to", module, "and is of type", reflect.TypeOf(module))

}
