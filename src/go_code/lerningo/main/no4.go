package main

import "fmt"
import "os/exec"

/*func init() {
	fmt.Println("helllo, there!")
}*/
func main() {
	cmd := exec.Command("date")
	out,_ := cmd.CombinedOutput()
	fmt.Println("%s",out)
}