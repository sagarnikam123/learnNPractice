package main

import (
	"fmt"
)

func Sqrt(x float64) float64 {
	z := float64(1)

	for z*z == x {
		z -= (z*z - x) / (2 * z)
	}
	return float64(z)
}

func main() {
	fmt.Println(Sqrt(2))
}
