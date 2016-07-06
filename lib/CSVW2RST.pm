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

use Data::Dumper;

# http://www.w3.org/TR/tabular-metadata/#normalization - table titles

use constant METEOR_URL => 'http://meteor.aihw.gov.au/content/index.phtml/itemId/';

use version; our $VERSION = qv('1');

sub generate {
    my $class = shift;
    my $meta  = shift;

    my $summary_table;
    my $summary_row    = 0;
    my $summary_column = 0;

    my $summary_fh;
    # open $summary_fh, ">", '_doc/summary-table.csv' or die 'summary-table.csv' . ": $!";

    my $max_rows = 0;

    say Dumper $meta;
    say Dumper $meta->{tables};

    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });
    foreach my $record ( @{$meta->{tables}} ) {

        next unless $record->{'schema:name'};
        
        say '=' x length $record->{'schema:name'};
        say $record->{'schema:name'};
        say '-' x length $record->{'schema:name'};
        
        my $ddmd = $Data::Dumper::Maxdepth;
        $Data::Dumper::Maxdepth = 3;
        say Dumper $record;
        $Data::Dumper::Maxdepth = $ddmd;
        say "\n";

        my $rec_type = lc $record->{'schema:name'};
        $rec_type =~ s/\s+/-/g;

        $summary_table->[0][$summary_column] = $rec_type;
        
        my $filename = '_doc/record/' . $rec_type . ".csv";
        open my $fh, ">", $filename or die $filename . ": $!";

        my $size = 0;
        my $note_no = 1;
        my $notes = '';

        $csv->say($fh, [
            'Data Element (Field Name)',
            'Type [Length]',
            'Notes / Values',
        ]);

        my $row_count = 1;

        foreach my $field ( @{$record->{'tableSchema'}{'columns'}} ) {
            say $field->{'titles'}[1];
            say '^' x length $field->{'titles'}[1];
            say Dumper $field;
            say "\n";
        }

    }

    #####
    return;
    #####
        
    foreach my $record ( $meta->{tables} ) {

#        $summary_table->[0][$summary_column] = $record->rec_type();

        my $filename = '_doc/record/' . lc $record->rec_type() . ".csv";
        open my $fh, ">", $filename or die $filename . ": $!";

        my $size = 0;
        my $note_no = 1;
        my $notes = '';

#        $csv->say($fh, [
#            'Data Element (Field Name)',
#            'Type [Length]',
#            'Start',
#            'Notes / Values',
#        ]);

        my $row_count = 1;
            
        foreach my $field ( $record->fields() ) {

            $summary_table->[$row_count++][$summary_column] = $field->Title();
            
            if ($row_count > $max_rows ) {
                $max_rows = $row_count;
            }

            my $note_ref = '';
            my $domain = $field->Domain();
            if (ref $domain eq 'HASH') {
                if ( exists $domain->{Notes} && ! ($field->Type() =~ /^Date/) ) {
                    
                    my $note = $domain->{Notes};
                    $note =~ s/\n/\n  /sg;
                    $note =~ s/\n\s*$//s;
                    
                    $note_ref = '[#tn_' . lc $record->rec_type() . $note_no . ']';
                    $notes .= '.. ' . "$note_ref\n" . '  ' . $note . "\n";
                    $note_ref = ' ' . $note_ref . '_';
                    $note_no++;
                }
            }

            my $meteor_link = '';
            if ( $field->MeteorID() ) {
                $meteor_link = "\n\nMETeOR: " . meteor($field->MeteorID());
            }

            $csv->say($fh, [
                '`' . $field->Title() . '`_'
                . ' (' . $field->Name() . ')'
                . "$note_ref\n\n"
                . $meteor_link,
                $field->Encoding() . '[' . $field->Length .']',
                $size + 1,
#               $field->Definition() .
                format_domain($field),
            ]);

            $size = $size + $field->Length();
        }

        $summary_column++;

        my $filename_rst = '_doc/record/' . lc $record->rec_type() . "-notes.rst";
        open my $fh_rst, ">", $filename_rst or die $filename_rst . ": $!";
        print $fh_rst "\n\n";
        if ( $notes ) {
            print $fh_rst ".. rubric:: Notes\n\n$notes";
        }
        close $fh or die $filename . ": $!";
        close $fh_rst or die $filename_rst . ": $!";

    }

    #print Dumper $summary_table;

    foreach my $row (@{$summary_table}) {
        $csv->say($summary_fh, $row);
    }

    generate_definitions();
}

sub generate_definitions {
    my $vars = shift || die 'need to replace';

    my $filename = '_doc/definitions.rst';
    open my $fh, ">", $filename or die $filename . ": $!";

    say $fh "Definitions";
    say $fh "-----------\n";

    foreach my $field ( @{$vars->{definition_records}} ) {

        # warn Dumper($field);
        # warn $field->Name() . "\n";

        #print $fh "\n";
        say $fh $field->Title();
        say $fh ('^' x length $field->Title()) . "\n";

        if( $field->Definition() ) {
            say $fh $field->Definition();
        }

        print $fh "\n:Field name: ";
        say $fh $field->Name();
        
        print $fh "\n:Data type: ";
        say $fh $field->Encoding() . '[' . $field->Length .']';

        my $domain = $field->Domain();
        if ( defined $domain ) {
            say $fh "\n:Domain:";
            say $fh indent(format_domain($field));

            if ( ref $domain && exists $domain->{Notes} ) {
                say $fh ':Notes:';
                say $fh indent($domain->{Notes});
            }
        }

        if ( $field->Comments() ) {
            say $fh "\n:Notes:" 
              if (! ref $domain || ! exists $domain->{Notes} );
            #warn $field->Name() . "\n";
            say $fh indent($field->Comments());
        }

        if( $field->MeteorID() ) {
            print $fh "\n:METeOR: ";
            say $fh meteor($field->MeteorID());
        }

        say $fh "\n----------\n";
    }

    close $fh or die $filename . ": $!";
}

sub format_domain {
    my $field = shift;

    my $ret_str = '';
    my $domain = $field->Domain();

    # print Dumper $field, "\n";

    if (ref $domain eq 'HASH') {

        my $set = exists $domain->{Set} ? $domain->{Set} : 0;
        if ( $field->Type() =~ m/^Date/ ) {
            if ( exists $domain->{Notes} ) {
                $ret_str .= $domain->{Notes};
            }
        }

        elsif ( ref $set eq 'HASH' && (scalar keys %{$domain->{Set}}) == 1 ) {
            $ret_str = 'Value = `' . (keys %{$domain->{Set}})[0] . "`\n";
        }

        elsif ( ref $set eq 'HASH' ) {
            my $newline = "";
            foreach my $key ( sort { ncmp($a, $b) } keys %{$domain->{Set}} ) {
                my $value = $domain->{Set}{$key};
                $ret_str .= "$newline:$key: $value";
                $newline = "\n";
            }
        }
    }
    
    if ( ! $ret_str ) {
        $ret_str = $field->Domain() || ''; 
    }

    return $ret_str;
}

sub meteor {
    my $meteor_id = shift || return '—';

    return "`$meteor_id <" . METEOR_URL . "$meteor_id>`__"
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
