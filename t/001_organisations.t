use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing organisations schema

=cut

my $table = 'organisations';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistant-state.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 2,5. B\n1. inconsistent_values. Column: 5/, "Inconsistant state in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-state.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 2,5. 10/, "Incorrect state in $table file" );
