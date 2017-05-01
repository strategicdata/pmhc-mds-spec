package CSVW2RST;
use v5.24;
use strict;
use warnings;

use Carp;
use Path::Tiny;
use URI;
use Sort::Naturally;
use Digest::MD5 'md5_base64';
use Encode 'encode';
use File::ShareDir qw(module_dir);
use YAML::XS qw(LoadFile);
use Text::CSV_XS;
use Cpanel::JSON::XS;

use Data::Dumper;

#  - table titles

use constant METEOR_URL => 'http://meteor.aihw.gov.au/content/index.phtml/itemId/';

use constant DATA_SPEC_PATH => 'doc/data-specification/';

use version; our $VERSION = qv('1');

sub generate {
    my $class = shift;
    my $meta  = shift;

    my $summary_table;
    my $summary_row    = 0;
    my $summary_column = 0;

    my $summary_fh;

    if ( ! path(DATA_SPEC_PATH)->exists ) {
        path(DATA_SPEC_PATH)->mkpath;
    }
    open $summary_fh, ">", DATA_SPEC_PATH . 'summary-table.csv' or die 'summary-table.csv' . ": $!";

    my $max_rows = 0;

    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });

    my $definition_records;

    foreach my $record ( @{$meta->{tables}} ) {

        next unless $record->{'dc:title'};
        next if ( defined( $record->{'schema::isPublished'} ) and
                  $record->{'schema::isPublished'} eq "False" );

        #say '=' x length $record->{'dc:title'};
        warn $record->{'dc:title'}, "\n";
        #say '-' x length $record->{'dc:title'};

        #my $ddmd = $Data::Dumper::Maxdepth;
        #$Data::Dumper::Maxdepth = 3;
        #say Dumper $record;
        #$Data::Dumper::Maxdepth = $ddmd;
        #say "\n";

        $summary_table->[0][$summary_column] = $record->{'dc:title'};

        if ( ! path(DATA_SPEC_PATH . 'record')->exists ) {
            path(DATA_SPEC_PATH . 'record')->mkpath;
        }

        my $filename =  DATA_SPEC_PATH . 'record/' . $record->{'schema:name'} . ".csv";
        open my $fh, ">", $filename or die $filename . ": $!";

        my $size = 0;
        my $note_no = 1;
        my $notes = '';

        $csv->say($fh, [
            'Data Element (Field Name)',
            'Type (min,max)',
            'Format / Values',
        ]);

        my $row_count = 1;

        my $table_schema = decode_json(path($record->{tableSchema})->slurp);

        my $field_fk;
        %{$field_fk} = map { ($_->{columnReference}, $_->{reference}) }
            @{$table_schema->{foreignKeys}};

        foreach my $field ( @{$table_schema->{columns}} ) {
            warn "\t", $field->{'dc:title'}, "\n";
            #say '^' x length $field->{'dc:title'};
            #say Dumper $field;
            #say "\n";

            if ( exists $field_fk->{$field->{name}} ) {
                $field->{_domain} = $field_fk->{$field->{name}};
            }

            if ( exists $definition_records->{$field->{name}} ) {
                warn "\t!! - " . $field->{name} . " exists\n";
            }
            else {
                $definition_records->{$field->{name}} = $field;
            }

            $summary_table->[$row_count++][$summary_column] = $field->{'dc:title'};

            if ($row_count > $max_rows ) {
                $max_rows = $row_count;
            }

            my $meteor_link = '';
            if ( $field->{'schema:meteorItem'} ) {
                $meteor_link = "\n\nMETeOR: " . meteor($field->{'schema:meteorItem'});
            }

            my $abs_link = '';
            if ( $field->{'schema:absItem'} ) {
                $abs_link = "\n\n" . abs_link($field->{'schema:absItem'}, 'ABS');
            }

            $csv->say($fh, [
                '`' . $field->{'dc:title'} . '`_'
                . ' (' . $field->{'name'} . ')'
. "\n\n" #                . "$note_ref,
                . $meteor_link
                . $abs_link,
                format_datatype($field),
                format_domain($field),
            ]);
        }

        $summary_column++;

    }

#    print Dumper $summary_table;

    foreach my $row (@{$summary_table}) {
        $csv->say($summary_fh, $row);
    }

    generate_definitions($definition_records);
}

sub format_datatype {
    my $field    = shift;

    my $formatted_dt;
    if ( ref $field->{datatype} eq 'HASH' ) {
        $formatted_dt = $field->{datatype}{base};

        my $minl;
        my $maxl;

        if ( $field->{datatype}{base} eq 'string' ) {

            if ( exists $field->{datatype}{length} ) {
                $minl = $maxl = $field->{datatype}{length};
            }
            else {
                $minl = $field->{datatype}{minLength}
                    if exists $field->{datatype}{minLength};

                $maxl = $field->{datatype}{maxLength}
                    if exists $field->{datatype}{maxLength};

            }

            if ( defined $minl && $minl eq $maxl ) {
                $minl = undef;
            }

            if ( defined $minl and defined $maxl ) {
                $formatted_dt .= " ($minl,$maxl)";
            }
            elsif ( defined $maxl ) {
                $formatted_dt .= " ($maxl)";
            }
            elsif ( defined $minl ) {
                die "minLength defined with no maxLength\n";
                #$formatted_dt .= " (>= $minl)";
            }

        }

    }
    else {
        $formatted_dt = $field->{datatype};
    }

    return $formatted_dt;
}

sub generate_definitions {
    my $definition_records = shift;
    my $field_fk = shift;

    if ( ! path(DATA_SPEC_PATH . 'include')->exists ) {
        path(DATA_SPEC_PATH . 'include')->mkpath;
    }

    my $filename = DATA_SPEC_PATH . 'include/definitions.rst';
    open my $fh, ">", $filename or die $filename . ": $!";

    say $fh "Definitions";
    say $fh "-----------\n";

    warn "\nDefinitions\n";
    warn "-----------\n";

    foreach my $field_name (
        sort { ncmp(
            $definition_records->{$a}{'dc:title'},
            $definition_records->{$b}{'dc:title'})
        } keys %{$definition_records} )
    {

        my $field = $definition_records->{$field_name};

        warn $field->{name} . "\n";

        #print $fh "\n";
        say $fh '.. _dfn-' . $field->{'name'} . ":\n";
        say $fh $field->{'dc:title'};
        say $fh ('^' x length $field->{'dc:title'}) . "\n";

        if( exists $field->{"schema:description"} ) {
            say $fh $field->{"schema:description"};
        }

        print $fh "\n:Field name: ";
        say $fh $field->{'name'};

        print $fh "\n:Data type: ";
        say $fh format_datatype($field);

        print $fh "\n:Required: ";
        if  ( defined $field->{'required'}
              and $field->{'required'} eq 'true'
        ) {
            say $fh $field->{'required'};
        } elsif ( exists $field->{'null'} ) {
            say $fh "true";
        } else {
            say $fh "false";
        }


        my $domain = format_domain($field);
        if ( defined $domain
             && (
                ! exists $field->{"schema:description"}
               || ($domain ne $field->{"schema:description"})
             )
        ) {
            say $fh "\n:Domain:";
            say $fh indent($domain);
        }

        if ( exists $field->{'schema:disambiguatingDescription'} ) {
            say $fh ':Notes:';
            say $fh indent(path($field->{'schema:disambiguatingDescription'})->slurp);
        }

        if ( $field->{'schema:meteorItem'} ) {
            print $fh "\n:METeOR: ";
            say $fh meteor($field->{'schema:meteorItem'});
        }

        if ( $field->{'schema:absItem'} ) {
            print $fh "\n:ABS: ";
            say $fh abs_link($field->{'schema:absItem'},$field->{'schema:absItem'});
        }

        say $fh "\n----------\n";
    }

    close $fh or die $filename . ": $!";
}

sub format_domain {

    my $field = shift;

    if ( ! ref $field->{datatype} ) {
        return $field->{datatype};
    }

    if (exists $field->{'schema:domain'} ) {
        return $field->{'schema:domain'};
    }

    if ( my $rv = format_fk($field) ) {
        return $rv;
    }

    if ( grep { $field->{datatype}{base} eq $_ } ('integer','number') ) {

        if (
            defined $field->{datatype}{minimum}
            and ! defined $field->{datatype}{maximum}
        ) {
            die "Min defined but no max";
        }

        my $rv = $field->{datatype}{minimum}
               . ' - '
               . $field->{datatype}{maximum};

        if ( defined( $field->{'null'} ) ) {
            $rv .= ", " . $field->{'null'}
                . ' = Not stated / Missing';
        }

        return $rv;
    }

    if ( exists $field->{'schema:description'} ){
        return $field->{'schema:description'};
    }

    return;
}

sub format_fk {
    my $field = shift;

    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 2 });

    my $rv = undef;
    my $aoh;

    if ( exists $field->{_domain} ) {
        return if $field->{_domain}{columnReference} ne "id";

        $rv = '';
        $aoh = $csv->csv(
            in      => $field->{_domain}{resource},
            headers => "auto"
        );

        my $newline = "";
        foreach my $item ( @{$aoh} ) {
            die $field->{_domain}{resource} . " does not have an id column\n"
                unless exists $item->{id};
            my $key = $item->{id};

            die $field->{_domain}{resource} . " does not have a description column\n"
                unless exists $item->{description};
            my $value = $item->{description};

            if (
                !defined( $key )
                or $key eq ""
            ) {
                $key = 'blank';
            }

            $rv .= "$newline:$key: $value";
            $newline = "\n";
        }
    }

    return $rv;

}

sub meteor {
    my $meteor_id = shift || return '—';

    return "`$meteor_id <" . METEOR_URL . "$meteor_id>`__"
}

sub abs_link {
    my $link = shift || return '—';
    my $name = shift;

    return "`$name <" . $link . ">`__"
}

sub _string_to_anchor {
    my $string = lc(join('', @_)); # grab the string, normalize.

    our %cache;
    unless (exists $cache{$string}) {
        $cache{$string} = md5_base64(encode("UTF-8", $string));
        $cache{$string} =~ tr{+/}{-_};
    }
    return $cache{$string};
}

# Alternate filter for ddict's sloppy whitespace format
# We want \n\n paragraphs to be paragraphs,
# but lines with leading whitespace need <br/> formatting
#  MHE: ExpNonSalTot Domain
#  CMHC: PersIdFlag Definition, PersSLA Definition
#  RMHC: PersSLA Definition

sub smart_html {
    my $text = shift;
    # \n\n is becomes <br/><br/>
    $text =~ s|(\r?\n){2,}|$1<br />$1<br />$1|g;
    # \n<space>+ becomes <br/>&nbsp;+
    $text =~ s|(\r?\n)( +)| "<br />$1" . '&nbsp;' x length($2)|ge;
    return $text;
}

sub indent {
    my $text = shift;

    $text =~ s/\n/\n  /sg;

    return '  ' . $text;
}

1; # Magical true value.
__END__
