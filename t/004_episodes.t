use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing practitioners schema

=cut

my $table = 'episodes';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistent-client-consent.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,5. j\n1. inconsistent_values. Column: 5/, "Inconsistant client consent in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-client-consent.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 2,5. 3/, "Incorrect client-consent in $table file" );
