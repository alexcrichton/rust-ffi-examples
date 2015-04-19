extern crate gcc;

fn main() {
    gcc::Config::new().file("src/double.c").compile("libdouble.a");
}
