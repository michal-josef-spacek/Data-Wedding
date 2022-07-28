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
