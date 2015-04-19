from ctypes import cdll

lib = cdll.LoadLibrary('target/libdouble_input.so')
double_input = lib.double_input

input = 4
output = double_input(input)
print(str(input) + " * 2 = " + str(output))
