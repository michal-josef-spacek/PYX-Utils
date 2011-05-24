# Pragmas.
use strict;
use warnings;

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Špaček <skim@cpan.org>',
	'NAME' => 'PYX::Utils',
	'PREREQ_PM' => {
		'Exporter' => 0,
		'File::Object' => 0,
	},
	'VERSION_FROM' => 'Utils.pm',
	'test' => {
		'TESTS' => 't/PYX::Utils/*.t',
	},
);
