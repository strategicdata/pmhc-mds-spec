#!/usr/bin/env perl

use strict;
use Getopt::Long;
use Excel::Writer::XLSX;
use Text::CSV_XS;
use Tie::IxHash;

use constant usage => <<'EOT'
csv2xlsx.pl [options] [csv_directory]

Automatically generate Excel XLSX file from CSV files stored in <csv_directory>.

  --help                  Show this text

EOT
    ;
our ($csv_dir, $help, $delete);

GetOptions(
  'help|?|h'  => \$help,
  'delete'    => \$delete
) or do { print usage; exit 1; };

if ($help) { print usage; exit 0; }

# Now, we can also specify the spec and version on the command line.
$csv_dir ||= shift;

# Check usage...
unless (defined($csv_dir)) {
    print usage;
    exit 1;
}

my %csvfiles;
my $t = tie( %csvfiles, 'Tie::IxHash' );
my $workbook;
if ($delete) {
  %csvfiles = (
      'Clients'          => "$csv_dir/clients-delete.csv",
      'Episodes'         => "$csv_dir/episodes-delete.csv",
      'Service Contacts' => "$csv_dir/service-contacts-delete.csv",
      'K10+'             => "$csv_dir/k10p-delete.csv",
      'K5'               => "$csv_dir/k5-delete.csv",
      'SDQ'              => "$csv_dir/sdq-delete.csv",
      'Practitioners'    => "$csv_dir/practitioners-delete.csv",
  );

  # Create a new Excel workbook
  $workbook  = Excel::Writer::XLSX->new( "$csv_dir/pmhc-upload-delete.xlsx" );
} else {
  %csvfiles = (
      'Clients'          => "$csv_dir/clients.csv",
      'Episodes'         => "$csv_dir/episodes.csv",
      'Service Contacts' => "$csv_dir/service-contacts.csv",
      'K10+'             => "$csv_dir/k10p.csv",
      'K5'               => "$csv_dir/k5.csv",
      'SDQ'              => "$csv_dir/sdq.csv",
      'Practitioners'    => "$csv_dir/practitioners.csv",
  );

  # Create a new Excel workbook
  $workbook  = Excel::Writer::XLSX->new( "$csv_dir/pmhc-upload.xlsx" );
}

# Create a new CSV parsing object
my $csv = Text::CSV_XS->new;

foreach my $file ( keys( %csvfiles ) ) {
  # Add a worksheet
  my $worksheet = $workbook->add_worksheet( $file );

  # Open the Comma Separated Variable file
  print STDERR "CSV file: " . $csvfiles{$file} . "\n";
  open( CSVFILE, $csvfiles{$file} ) or die "$ARGV[0]: $!";

  # Row and column are zero indexed
  my $row = 0;

  while (<CSVFILE>) {
    if ( $csv->parse($_) ) {
      my @Fld = $csv->fields;

      my $col = 0;
      foreach my $token (@Fld) {
          $worksheet->write( $row, $col, $token );
          $col++;
      }
      $row++;
    } else {
      my $err = $csv->error_input;
      print "Text::CSV_XS parse() failed on argument: ", $err, "\n";
    }
  }
}

exit( 0 );
