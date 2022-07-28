use strict;
use warnings;

use Data::Wedding;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Wedding::VERSION, 0.01, 'Version.');
