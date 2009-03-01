# Modules.
use PYX::Utils qw(decode);
use Test::More 'tests' => 1;

print "Testing: decode function.\n";
my $str = "a\nb";
my $out_str = decode($str);
is($out_str, 'a\nb');
