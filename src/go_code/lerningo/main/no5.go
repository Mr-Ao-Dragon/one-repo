package main

import "fmt"

const (
	test = "我喜欢大山猫"
	a    = iota
	b    = iota
	c    = iota
)

func main() {
	fmt.Println(a, b, c, test)
}
