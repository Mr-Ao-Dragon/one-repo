package main

import (
	"fmt"
	"os/exec"
)

//import "os"
func main() {
	//cmd := exec.Command("echo", os.ExpandEnv("$PS1"))
	cmd := exec.Command("neofetch")
	out, _ := cmd.CombinedOutput()
	fmt.Printf("%s", out)
}
