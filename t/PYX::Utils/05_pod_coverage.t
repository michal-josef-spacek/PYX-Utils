# Modules.
use Test::Pod::Coverage 'tests' => 1;

print "Testing: Pod coverage.\n";
pod_coverage_ok('PYX::Utils', 'PYX::Utils is covered.');
