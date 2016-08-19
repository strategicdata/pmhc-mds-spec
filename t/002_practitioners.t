use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing practitioners schema

=cut

my $table = 'practitioners';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistent-category.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,3. B\n1. inconsistent_values. Column: 3/, "Inconsistant category in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-category.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,3. 12/, "Incorrect category in $table file" );
