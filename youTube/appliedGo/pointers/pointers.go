package main

import "fmt"

func pointerDemo(x *int) {
	m := 2
	fmt.Println("Change value of x itself")
	x = &m
	fmt.Println("Before assigning: *x =", *x, ", x=", x)
	*x = 4
	fmt.Println("After assigning: *x =", *x, ", x=", x)
}

func main() {
	n := 1
	x := &n
	fmt.Println("Before the call: *x =", *x, ", x=", x)
	pointerDemo(x)
	fmt.Println("After the call: *x =", *x, ", x=", x)
}
