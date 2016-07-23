package main

func main(){

  m := make(map[string]string)
  m["first"] = "foo"
  m["second"] = "bar"
  m["third"] = "buz"

  for k, v := range m {
    println(k, v)
  }

}
