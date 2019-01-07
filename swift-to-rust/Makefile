ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/libdouble_input.$(EXT)
	swiftc src/main.swift -import-objc-header src/double.h -L./target/debug -ldouble_input -o double
	LD_LIBRARY_PATH=./target/debug ./double

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target double