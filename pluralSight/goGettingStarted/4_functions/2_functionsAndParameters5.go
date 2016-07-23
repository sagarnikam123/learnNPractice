package main

func main(){
  sayHello("Hello", "Go", "from", "Pluralsight")
}

func sayHello(messages ...string){
  for _ , message := range messages {
    println(message)
  }
}
