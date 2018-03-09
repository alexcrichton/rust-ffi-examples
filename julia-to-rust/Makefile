ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/libdouble_input.$(EXT)
	julia src/main.jl

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target
