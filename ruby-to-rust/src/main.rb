require 'ffi'

module Hello
  extend FFI::Library
  ffi_lib 'target/libdouble_input.so'
  attach_function :double_input, [ :int ], :int
end

input = 4
output = Hello.double_input(input)
puts "#{input} * 2 = #{output}"
