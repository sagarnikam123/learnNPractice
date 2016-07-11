package main

import "time"

func main(){
  go abcGen()
  println("This comes first!")
  time.Sleep(100 * time.Millisecond)
}

func abcGen(){
  for l := byte('a'); l <= byte('z'); l++ {
    go println(string(l))
  }
}
