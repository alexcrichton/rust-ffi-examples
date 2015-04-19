all: target/double
	target/double

target:
	mkdir -p $@

target/double: target/main.o target/libdouble_input.a
	$(CC) -o $@ -Wl,--gc-sections $^ -lpthread

target/libdouble_input.a: src/lib.rs Cargo.toml
	cargo build
	(cd target && ln -nsf debug/libdouble_input-*.a libdouble_input.a)

target/main.o: src/main.c | target
	$(CC) -o $@ -c $<

clean:
	rm -rf target
