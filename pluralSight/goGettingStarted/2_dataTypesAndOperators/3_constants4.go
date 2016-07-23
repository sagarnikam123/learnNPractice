package main

const (
  first = 1 << (10 * iota)
  second
  third
)

func main(){
  println(first)
  println(second)
  println(third)
}
