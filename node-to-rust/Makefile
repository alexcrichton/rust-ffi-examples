ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/libdouble_input.$(EXT) node_modules/ffi
	node src/main.js

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

node_modules/ffi:
	npm install ffi

clean:
	rm -rf target
	rm -rf node_modules
