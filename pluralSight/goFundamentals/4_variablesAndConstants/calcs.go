package main

import (
	"fmt"
	"reflect"
)

func main() {
	a := 10.00000
	b := 3
	fmt.Println("\n A is type", reflect.TypeOf(a), "and B is of type", reflect.TypeOf(b))
	//c = a + b
	c := int(a) + b
	fmt.Println("\n C has value", c, "and is of type", reflect.TypeOf(c))
}
