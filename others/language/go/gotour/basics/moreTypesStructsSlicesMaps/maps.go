package main

import "fmt"

type vertex struct {
	Lat, Long float64
}

var m map[string]vertex

func main() {
	m := make(map[string]vertex)
	m["Bell Labs"] = vertex{
		40.68433, -74.39967,
	}

	fmt.Println(m["Bell Labs"])
}
