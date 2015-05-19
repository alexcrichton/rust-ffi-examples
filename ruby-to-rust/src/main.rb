require 'ffi'

if RUBY_PLATFORM.include?('darwin')
  EXT = 'dylib'
else
  EXT = 'so'
end

module Hello
  extend FFI::Library
  ffi_lib 'target/debug/libdouble_input.' + EXT
  attach_function :double_input, [ :int ], :int
end

input = 4
output = Hello.double_input(input)
puts "#{input} * 2 = #{output}"
