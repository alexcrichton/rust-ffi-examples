extern crate gcc;

fn main() {
    gcc::Build::new()
        .file("src/triple.cpp")
        .cpp(true)
        .compile("libtriple.a");
}
