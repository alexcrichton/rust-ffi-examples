extern crate libc;

extern {
    fn triple_input(input: libc::c_int) -> libc::c_int;
}

fn main() {
    let input = 4;
    let output = unsafe { triple_input(input) };
    println!("{} * 3 = {}", input, output);
}
