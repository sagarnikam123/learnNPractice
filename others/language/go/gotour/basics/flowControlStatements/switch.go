package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Print("Go runs on ")

	switch os := runtime.GOOS; os {
	case "darwin":
		fmt.Print("OS X \n")
	case "linux":
		fmt.Print("Linux \n")
	default:
		// freebsd, openbsd
		// plan9, windows
		fmt.Print("%s", os)
	}

}
