# Modules.
use PYX::Utils;
use Test::More 'tests' => 1;

print "Testing: Version.\n";
is($PYX::Utils::VERSION, '0.01');
