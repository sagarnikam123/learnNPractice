package main

import "fmt"

type success struct {
	a int
	c bool
}

func main() {
	q := []int{2, 3, 5, 7, 11, 13}
	fmt.Println(q)

	r := []bool{true, false, true, true, false, true}
	fmt.Println(r)

	s := []struct {
		i int
		b bool
	}{
		{2, true},
		{3, false},
		{5, true},
		{7, true},
		{11, false},
		{13, true},
	}
	fmt.Println(s)

	z := []success{
		{1, true},
		{2, false},
		{3, true},
	}
	fmt.Println(z)

}
