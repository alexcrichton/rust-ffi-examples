all: target/debug/libdouble_input
	csc src/double.cs
	mono ./double.exe

target/debug/libdouble_input: src/lib.rs Cargo.toml
	rustc --crate-name double_input src/lib.rs --crate-type cdylib -o libdouble_input

clean:
	rm -rf target double.exe
