# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Spacek',
	'NAME' => 'PYX::Utils',
	'PREREQ_PM' => {
		'Exporter' => 0,
	},
	'VERSION_FROM' => 'Utils.pm',
	'test' => {
		'TESTS' => 't/PYX::Utils/*.t',
	},
);
