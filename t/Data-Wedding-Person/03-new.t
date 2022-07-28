use strict;
use warnings;

use Data::Wedding::Person;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 6;
use Test::NoWarnings;
use Unicode::UTF8 qw(decode_utf8);

# Test.
my $obj = Data::Wedding::Person->new;
isa_ok($obj, 'Data::Wedding::Person');

# Test.
$obj = Data::Wedding::Person->new(
	'email' => 'skim@cpan.org',
	'id' => 1,
	'name' => decode_utf8('Michal Josef Špaček'),
);
isa_ok($obj, 'Data::Wedding::Person');

# Test.
eval {
	Data::Wedding::Person->new(
		'email' => 'x' x 300,
	);
};
is($EVAL_ERROR, "Parameter 'email' has length greater than '255'.\n",
	"Parameter 'email' has length greater than '255'.");
clean();

# Test.
eval {
	Data::Wedding::Person->new(
		'id' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'id' must be a number.\n",
	"Parameter 'id' must be a number.");
clean();

# Test.
eval {
	Data::Wedding::Person->new(
		'name' => 'x' x 300,
	);
};
is($EVAL_ERROR, "Parameter 'name' has length greater than '255'.\n",
	"Parameter 'name' has length greater than '255'.");
clean();
