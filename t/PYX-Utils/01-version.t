# Pragmas.
use strict;
use warnings;

# Modules.
use PYX::Utils;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($PYX::Utils::VERSION, 0.03, 'Version.');
