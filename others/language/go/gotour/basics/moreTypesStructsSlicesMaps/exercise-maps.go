package main

import (
	"strings"

	"golang.org/x/tour/wc"
)

func WordCount(s string) map[string]int {
	z := strings.Split(s, " ")
	var gh = map[string]int{}

	for i := 0; i < len(z); i++ {
		gh[z[i]] = 1
	}
	return gh
}

func main() {
	wc.Test(WordCount)
}
