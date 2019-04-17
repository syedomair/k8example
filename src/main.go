package main

import (
	"fmt"
	"net/http"
)

func main() {

	http.HandleFunc("/", HelloWorldServer)
	http.ListenAndServe(":8080", nil) // set listen port
}

func HelloWorldServer(rw http.ResponseWriter, req *http.Request) {

	fmt.Fprint(rw, "Hello-World From K8Example!!")
}
