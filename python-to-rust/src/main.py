from ctypes import cdll
from sys import platform

if platform == 'darwin':
    prefix = 'lib'
    ext = 'dylib'
elif platform == 'win32':
    prefix = ''
    ext = 'dll'
else:
    prefix = 'lib'
    ext = 'so'

lib = cdll.LoadLibrary('target/debug/{}double_input.{}'.format(prefix, ext))
double_input = lib.double_input

input = 4
output = double_input(input)
print('{} * 2 = {}'.format(input, output))
