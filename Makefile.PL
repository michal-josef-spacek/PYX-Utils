# $Id: Makefile.PL,v 1.2 2005-08-27 12:35:52 skim Exp $

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'AUTHOR' => 'Michal Spacek',
	'NAME' => 'PYX::Utils',
	'VERSION_FROM' => 'Utils.pm',
);
