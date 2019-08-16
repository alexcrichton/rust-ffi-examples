all: target/debug/libdouble_input.a
	go run src/double.go

target/debug/libdouble_input.a: src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target
