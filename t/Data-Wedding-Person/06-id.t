use strict;
use warnings;

use Data::Wedding::Person;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Wedding::Person->new;
is($obj->id, undef, 'Get id (undef - default).');

# Test.
$obj = Data::Wedding::Person->new(
	'id' => 1,
);
is($obj->id, 1, 'Get id (1).');
