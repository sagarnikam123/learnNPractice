package main

const (
  first = iota
  second
)

const (
    third = iota
)

func main(){
  println(first)
  println(second)
  println(third)
}
