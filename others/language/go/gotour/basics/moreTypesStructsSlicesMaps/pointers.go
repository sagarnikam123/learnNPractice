package main

import "fmt"

func main() {
	i, j := 42, 2701

	fmt.Println("i - ", i)
	fmt.Println("j -", j)

	p := &i // point to i
	fmt.Println("&i - ", &i)
	fmt.Println("*p - ", *p) // read i through the pointer #dereferencing

	*p = 21                // set i through the pointer
	fmt.Println("i - ", i) // see the new value of i

	p = &j         // point to j
	*p = *p / 37   // divide j through the pointer
	fmt.Println(j) // see the new value of j
}
