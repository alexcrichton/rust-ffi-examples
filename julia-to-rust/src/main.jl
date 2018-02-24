input = Int32(10)
output =  ccall((:double_input, "target/debug/libdouble_input"),
                        Int32, (Int32,), input)

print(input)
print(" * 2 = ")
println(output)
