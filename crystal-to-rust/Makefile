ifeq ($(shell uname),Darwin)
    EXT := dylib
else
    EXT := so
endif

all: target/debug/libdouble_input.$(EXT)
	LIBRARY_PATH=$(PWD)/target/debug:$(LIBRARY_PATH) crystal build src/double.cr -o double
	LD_LIBRARY_PATH=./target/debug ./double

target/debug/libdouble_input.$(EXT): src/lib.rs Cargo.toml
	cargo build
	cd src

clean:
	rm -rf target double double.dwarf