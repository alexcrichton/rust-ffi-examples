ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/libdouble_input.$(EXT) node_modules/ffi
	node src/main.js

target/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build
	(cd target && ln -nsf debug/libdouble_input-*$(EXT) libdouble_input.$(EXT))

node_modules/ffi:
	npm install ffi

clean:
	rm -rf target
	rm -rf node_modules
