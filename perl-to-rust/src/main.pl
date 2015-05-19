use v5.10;
use FFI::Raw;

my $double_input = FFI::Raw->new(
    "target/debug/libdouble_input.so",
    'double_input',
    FFI::Raw::int,    # return value
    FFI::Raw::int     # arg #1
);

my $input  = 4;
my $output = $double_input->call($input);
say $input . " * 2 = " . $output;

