# Pragmas.
use strict;
use warnings;

# Modules.
use inc::Module::Install;

# Definition.
abstract 'A perl module for PYX common utilities';
author 'Michal Spacek <skim@cpan.org>';
license 'bsd';
name 'PYX-Utils';
readme_from 'Utils.pm';
requires 'Exporter' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=PYX-Utils';
resources 'homepage' => 'https://github.com/tupinek/PYX-Utils';
resources 'repository' => 'git://github.com/tupinek/PYX-Utils';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.07;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
