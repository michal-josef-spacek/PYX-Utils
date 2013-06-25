# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::Utils qw(encode);
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $str = 'a\nb';
my $out_str = encode($str);
is($out_str, "a\nb");
