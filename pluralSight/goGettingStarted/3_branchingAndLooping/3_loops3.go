package main

func main(){

  s := []string{"foo", "bar", "buz"}

  for idx, v := range s {
    println(idx, v)
  }
}
