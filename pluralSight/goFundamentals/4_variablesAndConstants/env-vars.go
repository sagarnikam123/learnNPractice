package main

import (
	"fmt"
	"os"
)

func main() {
	//fmt.Println(os.Environ())
	for _, env := range os.Environ() {
		fmt.Println(env)
	}
}
