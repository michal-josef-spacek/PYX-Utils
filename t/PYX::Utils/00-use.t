# Modules.
use Test::More 'tests' => 2;

BEGIN {
	print "Usage tests.\n";
	use_ok('PYX::Utils');
}
require_ok('PYX::Utils');
