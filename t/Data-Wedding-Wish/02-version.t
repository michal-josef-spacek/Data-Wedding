use strict;
use warnings;

use Data::Wedding::Wish;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Wedding::Wish::VERSION, 0.01, 'Version.');
