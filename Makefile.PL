# $Id: Makefile.PL,v 1.1 2005-08-09 06:44:45 skim Exp $

# Modules.
use ExtUtils::MakeMaker;

# Definition.
WriteMakefile(
	'NAME' => 'PYX::Utils',
	'VERSION_FROM' => 'Utils.pm',
	'AUTHOR' => 'Michal Spacek',
);
