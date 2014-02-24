# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::Utils qw(entity_encode);
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Test.
my $str = 'a<b';
my $out_str = entity_encode($str);
is($out_str, "a&lt;b");

# Test.
$str = 'a&b';
$out_str = entity_encode($str);
is($out_str, "a&amp;b");

# Test.
$str = 'a"b';
$out_str = entity_encode($str);
is($out_str, "a&quot;b");

# Test.
$str = '<&"';
$out_str = entity_encode($str);
is($out_str, "&lt;&amp;&quot;");
