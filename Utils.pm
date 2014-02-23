package PYX::Utils;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(decode encode entity_encode);
Readonly::Hash our %ENTITIES => (
        '<' => '&lt;',
        q{&} => '&amp;',
        q{"} => '&quot;',
);
Readonly::Scalar our $ENTITIES => join q{}, keys %ENTITIES;

# Version.
our $VERSION = 0.01;

# Decode chars.
sub decode {
	my $text = shift;
	$text =~ s/\n/\\n/gms;
	return $text;
}

# Encode chars.
sub encode {
	my $text = shift;
	$text =~ s/\\n/\n/gms;
	return $text;
}

# Encode some chars for html.
sub entity_encode {
	my $text = shift;
	$text =~ s/([$ENTITIES])/$ENTITIES{$1}/gms;
	return $text;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

PYX::Utils - A perl module for PYX common utilities.

=head1 SYNOPSIS

 my $decoded_text = decode($text);
 my $encoded_text = encode($text);
 my $encoded_text = entity_encode($text);
 
=head1 SUBROUTINES

=over 8

=item C<decode($text)>

 Decode characters.
 Currently decode newline to '\n'.
 Returns decoded text.

=item C<encode($text)>

 Encode characters.
 Currently encode '\n' to newline.
 Returns encoded text.

=item C<entity_encode($text)>

TODO

=back

=head1 EXAMPLE1

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use PYX::Utils qw(decode);

 # TODO

 # Output:
 # TODO

=head1 EXAMPLE2

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use PYX::Utils qw(encode);

 # TODO

 # Output:
 # TODO

=head1 EXAMPLE3

 # Pragmas.
 use strict;
 use warnings;

 # Modules.
 use PYX::Utils qw(entity_encode);

 # TODO

 # Output:
 # TODO

=head1 DEPENDENCIES

L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<App::SGML2PYX>,
L<PYX::Checker>,
L<PYX::Filter>,
L<PYX::GraphViz>,
L<PYX::Optimalization>,
L<PYX>,
L<PYX::Parser>,
L<PYX::Sort>,
L<PYX::Stack>,
L<PYX::Write::Raw>,
L<PYX::Write::Tags>,
L<PYX::Write::Tags::Code>,
L<PYX::XMLNorm>.

=head1 AUTHOR

Michal Špaček L<skim@cpan.org>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
