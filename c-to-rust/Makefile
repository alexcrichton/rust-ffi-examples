ifeq ($(shell uname),Darwin)
    LDFLAGS := -Wl,-dead_strip
else
    LDFLAGS := -Wl,--gc-sections -lpthread
endif

all: target/double
	target/double

target:
	mkdir -p $@

target/double: target/main.o target/debug/libdouble_input.a
	$(CC) -o $@ $^ $(LDFLAGS)

target/debug/libdouble_input.a: src/lib.rs Cargo.toml
	cargo build

target/main.o: src/main.c | target
	$(CC) -o $@ -c $<

clean:
	rm -rf target
