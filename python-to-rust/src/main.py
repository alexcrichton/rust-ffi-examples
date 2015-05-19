from ctypes import cdll
from sys import platform

if platform == "darwin":
    ext = "dylib"
else:
    ext = "so"

lib = cdll.LoadLibrary('target/debug/libdouble_input.' + ext)
double_input = lib.double_input

input = 4
output = double_input(input)
print(str(input) + " * 2 = " + str(output))
