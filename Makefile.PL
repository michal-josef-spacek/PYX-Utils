# $Id: Makefile.PL,v 1.3 2006-03-23 22:17:56 skim Exp $

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
);
