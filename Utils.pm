#------------------------------------------------------------------------------
package PYX::Utils;
#------------------------------------------------------------------------------
# $Id: Utils.pm,v 1.3 2005-08-27 12:35:52 skim Exp $

# Pragmas.
use strict;

# Modules.
use Exporter;

# Version.
our $VERSION = 0.01;

# Inheritance.
our @ISA = ('Exporter');

# Export.
our @EXPORT_OK = ('decode', 'encode', 'entity_encode');

# Encoding table.
our %entities = (
        '<' => '&lt;',
        '&' => '&amp;',
        '"' => '&quot;',
);
our $entities = join('', keys(%entities));

#------------------------------------------------------------------------------
sub decode {
#------------------------------------------------------------------------------
# Decode chars.

	my $text = shift;
	$text =~ s/\n/\\n/g;
	return $text;
}

#------------------------------------------------------------------------------
sub encode {
#------------------------------------------------------------------------------
# Encode chars.

	my $text = shift;
	$text =~ s/\\n/\n/g;
	return $text;
}

#------------------------------------------------------------------------------
sub entity_encode {
#------------------------------------------------------------------------------
# Encode some chars for html.

	my $text = shift;
	$text =~ s/([$entities])/$entities{$1}/g;	
	return $text;
}

1;
