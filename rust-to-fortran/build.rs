extern crate cc;

fn main() {
    cc::Build::new()
        .file("src/double.f90")
        .compile("libdouble.a");
}
