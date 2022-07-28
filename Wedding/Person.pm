package Data::Wedding::Person;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_isa check_length check_number check_required);

our $VERSION = 0.01;

has email => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

has name => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check email.
	check_length($self, 'email', 255);

	# Check id.
	check_number($self, 'id');

	# Check person name.
	check_length($self, 'name', 255);

	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Data::Wedding::Person - Data object for wedding person.

=head1 SYNOPSIS

 use Data::Wedding::Person;

 my $obj = Data::Wedding::Person->new(%params);
 my $email = $obj->email;
 my $id = $obj->id;
 my $name = $obj->name;

=head1 METHODS

=head2 C<new>

 my $obj = Data::Wedding::Person->new(%params);

Constructor.

Returns instance of object.

=over 8

=item * C<email>

Person email.
It's optional.
Default value is undef.

=item * C<id>

Id of person.
It's number.
It's optional.
Default value is undef.

=item * C<name>

Name of person.
Length of name is 255.
It's optional.

=back

=head2 C<email>

 my $email = $obj->email;

Get person email.

Returns string.

=head2 C<id>

 my $id = $obj->id;

Get person id.

Returns number.

=head2 C<name>

 my $name = $obj->name;

Get person name.

Returns string.

=head1 ERRORS

 new():
         Parameter 'email' has length greater than '255'.
                 Value: %s
         Parameter 'id' must a number.
                 Value: %s
         Parameter 'name' has length greater than '255'.
                 Value: %s

=head1 EXAMPLE

 use strict;
 use warnings;

 use Data::Wedding::Person;
 use DateTime;
 use Unicode::UTF8 qw(decode_utf8 encode_utf8);

 my $obj = Data::Wedding::Person->new(
         'email' => 'skim@cpan.org',
         'id' => 1,
         'name' => decode_utf8('Michal Josef Špaček'),
 );

 # Print out.
 print 'Id: '.$obj->id."\n";
 print 'Name: '.encode_utf8($obj->name)."\n";
 print 'Email: '.$obj->email."\n";

 # Output:
 # Id: 1
 # Name: Michal Josef Špaček
 # Email: skim@cpan.org

=head1 DEPENDENCIES

L<Mo>,
L<Mo::utils>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Data-Wedding>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2022 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
