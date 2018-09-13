# rust-ffi-examples

FFI examples written in Rust

##A table for C/C++ type in Rust

|C type                 | Corresponding std::os::raw type |
|-----------------------|:--------------------------------|
|short                  | c_short                         |
|int                    | c_int                           |
|long                   | c_long                          |
|long long              | c_longlong                      |
|unsigned short         | c_ushort                        |
|unsigned, unsigned int | c_uint                          |
|unsigned long          | c_ulong                         |
|unsigned long long     | c_ulonglong                     |
|char                   | c_char                          |
|signed char            | c_schar                         |
|unsigned char          | c_uchar                         |
|float                  | c_float                         |
|double                 | c_double                        |
|void *, const void *   | *mut c_void, *const c_void      |
|usize                  | size_t                          |
|isize                  | ptrdiff_t                       |

###You can also use https://crates.io/crates/libc instead of std::os::raw
