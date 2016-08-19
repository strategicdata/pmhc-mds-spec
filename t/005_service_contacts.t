use strict;
use warnings;

use Test::More tests => 3;
use lib './t';
use Csvlint;

=head1 DESCRIPTION

Testing practitioners schema

=cut

my $table = 'service-contacts';

my $result = Csvlint::run_csvlint( "fixtures/$table/valid.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is VALID/, "Valid $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/inconsistent-contact-type.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 2,6. b\n1. inconsistent_values. Column: 6/, "Inconsistant contact type in $table file" );

$result = Csvlint::run_csvlint( "fixtures/$table/incorrect-contact-type.csv", "$table.csv");
ok( $result =~ /data\/$table.csv is INVALID\n1. format. Row: 2,6. 9/, "Incorrect contact type in $table file" );
