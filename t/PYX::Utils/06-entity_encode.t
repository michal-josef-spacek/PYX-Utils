# Modules.
use PYX::Utils qw(entity_encode);
use Test::More 'tests' => 4;

my $str = 'a<b';
my $out_str = entity_encode($str);
is($out_str, "a&lt;b");

$str = 'a&b';
$out_str = entity_encode($str);
is($out_str, "a&amp;b");

$str = 'a"b';
$out_str = entity_encode($str);
is($out_str, "a&quot;b");

$str = '<&"';
$out_str = entity_encode($str);
is($out_str, "&lt;&amp;&quot;");
