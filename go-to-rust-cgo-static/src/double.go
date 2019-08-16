package main

//#cgo LDFLAGS: -L${SRCDIR}/../target/debug -ldouble_input -ldl
//#include <stdint.h>
//extern int32_t double_input(int32_t input);
import "C"
import (
        "fmt"
)

func main() {
    input  := 2
    double := C.double_input(C.int32_t(input))
    fmt.Printf("%d * 2 = %d\n", input, double)
}
