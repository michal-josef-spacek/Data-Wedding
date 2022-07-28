use strict;
use warnings;

use Data::Wedding::Person;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Wedding::Person::VERSION, 0.01, 'Version.');
