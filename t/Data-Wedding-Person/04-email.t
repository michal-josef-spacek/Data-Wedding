use strict;
use warnings;

use Data::Wedding::Person;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Wedding::Person->new;
is($obj->email, undef, 'Get email (undef - default).');

# Test.
$obj = Data::Wedding::Person->new(
	'email' => 'skim@cpan.org',
);
is($obj->email, 'skim@cpan.org', 'Get email (skim@cpan.org).');
