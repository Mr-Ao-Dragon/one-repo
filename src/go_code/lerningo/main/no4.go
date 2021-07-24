package main

import "fmt"
//import "os"
import "os/exec"
func init() {
	//os.Setenv("TEST", "test")
	}
func main() {
	//cmd := exec.Command("echo", os.ExpandEnv("$PS1"))
	cmd := exec.Command("apt","moo")
	out,_ := cmd.CombinedOutput()
	fmt.Printf("%s",out)
}
