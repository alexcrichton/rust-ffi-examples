package main

import "C"

//export DoubleInput
func DoubleInput(input int32) int32 {
  return input * 2
}

func main() {}
