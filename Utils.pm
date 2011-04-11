package PYX::Utils;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Error::Simple::Multiple qw(err);
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(decode encode entity_encode set_params);
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

# Set parameters to user values.
sub set_params {
	my ($self, @params) = @_;
	while (@params) {
		my $key = shift @params;
		my $val = shift @params;
		if (! exists $self->{$key}) {
			err "Unknown parameter '$key'.";
		}
		$self->{$key} = $val;
	}
	return;
}

1;

__END__

=pod

=encoding utf8

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

=item B<set_params($self, @params)>

 Sets object parameters to user values.
 If setted key doesn't exist in $self object, turn fatal error.
 $self - Object or hash reference.
 @params - Key, value pairs.

=back

=head1 ERRORS

 set_params():
   Unknown parameter '%s'.

=head1 EXAMPLE

TODO

=head1 DEPENDENCIES

L<Error::Simple::Multiple(3pm)>,
L<Readonly(3pm)>.

=head1 SEE ALSO

 TODO

=head1 AUTHOR

Michal Špaček L<tupinek@gmail.com>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
