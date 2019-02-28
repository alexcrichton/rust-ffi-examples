extern crate cc;

fn main() {
    cc::Build::new()
        .file("src/triple.cpp")
        .cpp(true)
        .compile("libtriple.a");
}
