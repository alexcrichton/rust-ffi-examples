
import 'dart:ffi' as ffi;

typedef NativeRustAddFunction = ffi.Int32 Function(ffi.Int32, ffi.Int32);
typedef NativeAddFunction = int Function(int, int);

main() {
  ffi.DynamicLibrary dl = ffi.DynamicLibrary.open("target/debug/librust_add.so");
  var add = dl.lookupFunction<NativeRustAddFunction, NativeAddFunction>("rust_add");
  var number = add(12,13);
  print("call rust function add(12,13)=$number");
}