<?php

$libExtension = (PHP_OS_FAMILY == "Darwin" ? 'dylib' : 'so');

$ffi = FFI::cdef(
    "int32_t double_input(int32_t input);",
    "target/debug/libdouble_input.$libExtension");
var_dump($ffi->double_input(3));
?>
