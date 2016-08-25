use strict;
use warnings;

use Test::More tests => 2;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing organisations schema

=cut

my $table = 'organisations';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

# This test needs to be changed once we are properly testing foreign keys
$result = Csvlint::run_csvlint( "fixtures/$table/inconsistant-state.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID\n1. inconsistent_values. Column: 5/, "Inconsistant state in $table file" );

# This test needs to be changed once we are properly testing foreign keys
#$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-state.csv", "$table.csv");
#ok( $result =~ /data\/$table.csv is VALID/, "Incorrect state in $table file" );
