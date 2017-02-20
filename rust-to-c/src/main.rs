extern crate libc;

#[link(name="double", kind="static")]
extern {
    fn double_input(input: libc::c_int) -> libc::c_int;
}

fn main() {
    let input = 4;
    let output = unsafe { double_input(input) };
    println!("{} * 2 = {}", input, output);
}
