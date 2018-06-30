package main

import "fmt"

// Container - type safe interface
type Container []interface{}

// Put - adding elements
func (c *Container) Put(elem interface{}) {
	*c = append(*c, elem)
}

// Get - for viewing/getting elements
func (c *Container) Get() interface{} {
	elem := (*c)[0]
	*c = (*c)[1:]
	return elem
}

// IsEmpty - for checking null/no elements
func (c *Container) IsEmpty() bool {
	return len(*c) == 0
}

// IntContainer - all methods of Container available
// Container - is an embedded filed here
type IntContainer struct {
	Container
}

// Put - method of IntContainer, for type safety
// using type name instead of field name
func (ic *IntContainer) Put(elem int) {
	(*ic).Container.Put(elem)
}

func main() {
	intContainer := &IntContainer{Container{}}
	intContainer.Put(7)
	intContainer.Put(42)
	//intContainer.Put("42")

	for !intContainer.IsEmpty() {
		elem := intContainer.Get().(int)

		/*
			elem, ok := intContainer.Get().(int)
			if !ok {
				fmt.Println("Get() did not return an int")
				continue
			}
		*/

		fmt.Printf("elem: %d (%[1]T)\n", elem)
	}
}
