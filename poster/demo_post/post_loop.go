package main

import "os"

func main() {
	i := 0
	n := 1
	for {
		if i < 10 {
			n *= 2
			i++
		} else {
			n *= 4
			i += 3
		}
		if !(i < 15) {
			break
		}
	}
	os.Exit(n % 123)
}
