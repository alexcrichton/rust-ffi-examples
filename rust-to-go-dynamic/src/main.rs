extern crate libc;

#[link(name = "double_input")]
extern {
    fn DoubleInput(input: libc::c_int) -> libc::c_int;
}

fn main() {
    let input = 2;
    let output = unsafe { DoubleInput(input) };
    println!("{} * 2 = {}", input, output);
}
