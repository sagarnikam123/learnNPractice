package main

import "fmt"

type vertex struct {
	x int
	y int
}

func main() {
	v := vertex{1, 2}
	v.x = 4
	fmt.Println(v.x)
}
