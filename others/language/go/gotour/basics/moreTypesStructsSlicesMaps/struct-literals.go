package main

import "fmt"

type vertex struct {
	x, y int
}

var (
	v1 = vertex{1, 2}  // has type vertex
	v2 = vertex{x: 1}  // y:0 is implicit
	v3 = vertex{}      // x:0 & y:0
	p  = &vertex{1, 2} //has type *vertex
)

func main() {
	fmt.Println(v1, p, v2, v3)
}
