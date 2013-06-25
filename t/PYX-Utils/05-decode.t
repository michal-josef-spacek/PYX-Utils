# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::Utils qw(decode);
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $str = "a\nb";
my $out_str = decode($str);
is($out_str, 'a\nb');
