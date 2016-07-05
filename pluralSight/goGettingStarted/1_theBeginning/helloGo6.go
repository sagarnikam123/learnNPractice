package main

var (
  message string
)

func main(){
	println(message)
}

func init(){
  message = "Hello Go!"
}
