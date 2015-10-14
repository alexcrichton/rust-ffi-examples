ifeq ($(shell uname),Darwin)
	EXT := dylib
else
	EXT := so
endif

all: target/debug/libdouble_input.$(EXT)
	ghc src/Main.hs target/debug/libdouble_input.$(EXT) -o main

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build

clean:
	rm -rf target
	rm main
	rm src/*.o src/*.hi
