package Data::Wedding::Wish;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_isa check_length check_number check_required);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

has person => (
	is => 'ro',
);

has wish => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check id.
	check_number($self, 'id');

	# Check person.
	check_required($self, 'person');
	check_isa($self, 'person', 'Data::Wedding::Person');

	# Check wish.
	check_required($self, 'wish');
	check_length($self, 'wish', 5000);

	return;
}

1;

__END__
