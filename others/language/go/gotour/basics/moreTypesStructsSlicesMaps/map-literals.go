package main

import "fmt"

type vertex struct {
	Lag, Long float64
}

var m = map[string]vertex{
	"Bell Labs": vertex{
		40.68433, -74.39967,
	},
	"Google": vertex{
		37.42202, -122.08408,
	},
}

func main() {
	fmt.Println(m)
}
