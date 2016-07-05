#!/usr/bin/env perl
use strict;
use warnings;

use Getopt::Long;
use Cpanel::JSON::XS;
use Path::Tiny;

use Data::Dumper;

use lib './lib';

use CSVW2RST;

use constant usage => <<'EOT'
csvw2rst.pl [options] [meta.json]

Automatically generate documentation from CSVW metadata in RST foramt.

  --meta     <meta.json>  Generate documentation for <meta.json>
  --help                  Show this text

EOT
    ;

our ($meta_filename, $help);

GetOptions('meta=s'    => \$meta_filename,
           'help|?|h'  => \$help)
    or do { print usage; exit 1; };

if ($help) { print usage; exit 0; }

# Now, we can also specify the spec and version on the command line.
$meta_filename ||= shift;

# Check usage...
unless (defined($meta_filename)) {
    print usage;
    exit 1;
}

my $meta = decode_json(path($meta_filename)->slurp);

print Dumper $meta;

# Generate the RST documentation.
CSVW2RST->generate(meta => $meta);

exit 0;
