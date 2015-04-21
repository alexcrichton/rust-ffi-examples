ifeq ($(shell uname),Darwin)
    LDFLAGS := -Wl,-dead_strip
else
    LDFLAGS := -Wl,--gc-sections -lpthread
endif

all: target/double
	target/double

target:
	mkdir -p $@

target/double: target/main.o target/libdouble_input.a
	$(CC) -o $@ $^ $(LDFLAGS)

target/libdouble_input.a: src/lib.rs Cargo.toml
	cargo build
	(cd target && ln -nsf debug/libdouble_input-*.a libdouble_input.a)

target/main.o: src/main.c | target
	$(CC) -o $@ -c $<

clean:
	rm -rf target
