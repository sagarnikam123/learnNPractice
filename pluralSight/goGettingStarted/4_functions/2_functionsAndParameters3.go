package main

func main(){
  message := "Hello"
  sayHello(message)
  println(message)
}

func sayHello(message string){
  println(message)
  message = "Hello Go"
}
