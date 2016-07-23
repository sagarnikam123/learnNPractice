package main

func main(){
  mp := messagePrinter{"foo"}
  mp.printMessage()
}

type messagePrinter struct{
  message string
}

func (mp *messagePrinter) printMessage(){
  println(mp.message)
}
