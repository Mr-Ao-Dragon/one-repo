package main

import "fmt"

var (
	testecho string
	true     bool
	no       int
)

func main() {
	testecho = "hello"
	true = false
	no = 114514
	no++
	fmt.Println("hey_bro:", testecho)
	fmt.Println("hey_bro:", no)
	/*if true = false {
			fmt.Println("True is false")
	}*/
}
