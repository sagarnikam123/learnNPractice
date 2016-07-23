package main

func main(){
  mp := messagePrinter{"foo"}
  println(mp.message)
}

type messagePrinter struct{
  message string
}
