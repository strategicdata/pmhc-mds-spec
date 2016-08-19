use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing practitioners schema

=cut

my $table = 'clients';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistent-est-date-of-birth.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 4,5. e\n1. inconsistent_values. Column: 5/, "Inconsistant estimated date of birth flag in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-est-date-of-birth.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 3,5. 6/, "Incorrect estimated date of birth flag in $table file" );
