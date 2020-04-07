// Go program to illustrate the use of keywords
package Main

import "fmt"

func main() {
	// Here, package, import, func, var are keywords
	var a = "GeeksForGeeks"
	fmt.Println(a)

	// Here, the default is an illegal identifier
	// and compiler will throw an error
	// syntax error: unexpected default, expecting name
	// var default = "GFG"
}
