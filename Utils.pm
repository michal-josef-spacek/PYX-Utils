#------------------------------------------------------------------------------
package PYX::Utils;
#------------------------------------------------------------------------------

# Pragmas.
use strict;
use warnings;

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

=pod

=head1 NAME

PYX::Utils - TODO

=head1 SYNOPSIS

TODO

=head1 DESCRIPTION

TODO

=head1 SUBROUTINES

=over 8

=item B<decode()>

TODO

=item B<encode()>

TODO

=item B<entity_encode()>

TODO

=back

=head1 EXAMPLE

TODO

=head1 REQUIREMENTS

L<Exporter>

=head1 AUTHOR

Michal Spacek L<tupinek@gmail.com>

=head1 VERSION

0.01

=cut
