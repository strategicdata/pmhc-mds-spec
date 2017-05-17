#!/usr/bin/env perl

use strict;
use Getopt::Long;
use Spreadsheet::ParseXLSX;
use Text::CSV_XS;
#use Tie::IxHash;

use constant usage => <<'EOT'
csv2xlsx.pl [options] [xlsx_file] [csv_directory]

Automatically generate CSV files in <csv_directory> from XLSX file <xlsx_file>.

  --help                  Show this text

EOT
    ;
our ($xlsx_file, $csv_dir, $help);

GetOptions('help|?|h'  => \$help)
    or do { print usage; exit 1; };

if ($help) { print usage; exit 0; }

# Now, we can also specify the spec and version on the command line.
our ($xlsx_file, $csv_dir) = @ARGV;
$csv_dir ||= '.';

# Check usage...
unless (defined($xlsx_file) && -d $csv_dir) {
    print usage;
    exit 1;
}

my %csvfiles;
#my $t = tie( %csvfiles, 'Tie::IxHash' );
%csvfiles = (
    'Clients'          => "$csv_dir/clients.csv",
    'Episodes'         => "$csv_dir/episodes.csv",
    'Service Contacts' => "$csv_dir/service-contacts.csv",
    'K10+'             => "$csv_dir/k10p.csv",
    'K5'               => "$csv_dir/k5.csv",
    'SDQ'              => "$csv_dir/sdq.csv",
    'Practitioners'    => "$csv_dir/practitioners.csv",
);

my $parser = Spreadsheet::ParseXLSX->new();
my $workbook  = $parser->parse($xlsx_file);

# Create a new CSV parsing object
my $csv = Text::CSV_XS->new( { binary => 1 } );

foreach my $sheet_name ( keys( %csvfiles ) ) {
  my $sheet = $workbook->worksheet( $sheet_name );
  if ($sheet) {
    open my $fh, ">", $csvfiles{$sheet_name};
    my ( $row_min, $row_max ) = $sheet->row_range();
    my ( $col_min, $col_max ) = $sheet->col_range();
    # skip version row $row_min
    for my $row ($row_min+1 .. $row_max) {
      my @cells = map {
        my $cell = $sheet->get_cell( $row, $_ );
        defined $cell ? $cell->value() : undef;
      } ( $col_min .. $col_max );
      $csv->say($fh, \@cells);
    }
    close($fh);
  } else {
    print "SHEET NOT FOUND $sheet_name";
  }
}
