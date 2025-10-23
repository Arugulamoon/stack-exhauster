package main

import "github.com/Arugulamoon/stack-exhauster/internal/fibonacci"

func main() {
	// Infinite recursion will eventually result in stack exhaustion
	fibonacci.Sequence()
}
