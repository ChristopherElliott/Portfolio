package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

type handler struct{}

func (theHandler *handler) ServeHTTP(writer http.ResponseWriter, request *http.Request) {
	log.Printf("Received request: %s\n", request.URL)
	log.Printf("%v\n", request)
	io.WriteString(writer, "Hello world!")
}

const port = "8080"

func main() {
	server := http.Server{
		Addr:    fmt.Sprintf(":%s", port),
		Handler: &handler{},
	}

	server.ListenAndServe()
}
