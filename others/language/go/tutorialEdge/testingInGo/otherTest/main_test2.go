package otherTest

import (
  "fmt"
  "io"
  "io/ioutil"
  "net/http"
  "net/http/httptest"
  "testing"
)


func TestHttp(t *testing.T){
  handler := func(w http.ResponseWriter, r *http.Request){
    // here we write our expected response, in this case, we return a
    // JSON string which is typical when dealing with REST APIs
    io.WriteString(w, "{ \"Status\" :\"expected service response \"}")
  }

  req := httptest.NewRequest("GET", "https://tutorialedge.net", nil)
  w := httptest.NewRecorder()
  handler(w, req)

  resp := w.Result()
  body, _ := ioutil.ReadAll(resp.Body)

  fmt.Println(resp.StatusCode)
  fmt.Println(resp.Header.Get("Content-Type"))
  fmt.Println(string(body))
}
