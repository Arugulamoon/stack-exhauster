package fibonacci

import "fmt"

func Sequence(n ...uint64) {
	var next uint64 = 1
	if len(n) > 1 {
		next = n[len(n)-1] + n[len(n)-2]
	}

	fmt.Printf("%d, ", next)
	Sequence(append(n, next)...)
}
