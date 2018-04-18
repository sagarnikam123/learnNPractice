package main

import "fmt"

func main() {

	a := make([]int, 5)
	printSlices("a", a)

	b := make([]int, 0, 5)
	printSlices("b", b)

	c := b[:2]
	printSlices("c", c)

	d := c[2:5]
	printSlices("d", d)

}

func printSlices(s string, x []int) {
	fmt.Printf("%s len=%d cap=%d %v \n", s, len(x), cap(x), x)
}
