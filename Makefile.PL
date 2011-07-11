# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'BUILD_REQUIRES' => {
		'English' => 0,
		'File::Object' => 0,
		'Test::More' => 0,
		'Test::Pod' => 0,
		'Test::Pod::Coverage' => 0,
	},
	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker' => 0,
	},
	'LICENSE' => 'bsd',
	'NAME' => 'PYX::Utils',
	'PREREQ_PM' => {
		'Exporter' => 0,
		'Readonly' => 0,
	},
	'VERSION_FROM' => 'Utils.pm',
	'test' => {
		'TESTS' => 't/PYX::Utils/*.t',
	},
);
