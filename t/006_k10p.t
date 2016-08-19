use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing practitioners schema

=cut

my $table = 'k10p';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistent-reason.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,5. e\n1. inconsistent_values. Column: 5/, "Inconsistant reason in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-reason.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,5. 4/, "Incorrect reason in $table file" );
