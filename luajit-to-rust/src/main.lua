local ffi = require('ffi')

local ext

if ffi.os == 'Linux' then
    ext = 'so'
else
    ext = 'dylib'
end

ffi.cdef[[
int32_t double_input(int32_t input);
]]

local lib = ffi.load('target/debug/libdouble_input.' .. ext)
local double_input = lib.double_input

local input = 4
local output = double_input(input)

print(input .. " * 2 = " .. output)
