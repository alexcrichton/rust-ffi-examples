extern crate libc;

// Consider using the `nm` utility on compiled Fortran files to get the function names

extern {
    fn __wrapper_MOD_double_input(input: &libc::c_int) -> libc::c_int;
}

fn main() {
    let input = 4;
    let output = unsafe { __wrapper_MOD_double_input(&input) };
    println!("{} * 2 = {}", input, output);
}
