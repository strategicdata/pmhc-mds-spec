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

#  - table titles

use constant METEOR_URL => 'http://meteor.aihw.gov.au/content/index.phtml/itemId/';

use version; our $VERSION = qv('1');

my $self;

sub generate {
    my $class = shift;
    my $meta  = shift;

    my $summary_table;
    my $summary_row    = 0;
    my $summary_column = 0;

    my $summary_fh;
    # open $summary_fh, ">", '_doc/summary-table.csv' or die 'summary-table.csv' . ": $!";

    my $max_rows = 0;

    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });

    foreach my $record ( @{$meta->{tables}} ) {

        next unless $record->{'dc:title'};
        
        #say '=' x length $record->{'dc:title'};
        warn $record->{'dc:title'}, "\n";
        #say '-' x length $record->{'dc:title'};
        
        #my $ddmd = $Data::Dumper::Maxdepth;
        #$Data::Dumper::Maxdepth = 3;
        #say Dumper $record;
        #$Data::Dumper::Maxdepth = $ddmd;
        #say "\n";

        $summary_table->[0][$summary_column] = $record->{'schema:name'};
        
        if ( ! path("doc/record")->exists ) {
            path("doc/record")->mkpath;
        }

        my $filename = 'doc/record/' . $record->{'schema:name'} . ".csv";
        open my $fh, ">", $filename or die $filename . ": $!";

        my $size = 0;
        my $note_no = 1;
        my $notes = '';

        $csv->say($fh, [
            'Data Element (Field Name)',
            'Type [Length]',
            'Format / Values',
        ]);

        my $row_count = 1;
        
        my %field_fk = map { ($_->{columnReference}, $_->{reference}) } 
            @{$record->{tableSchema}{foreignKeys}};

        foreach my $field ( @{$record->{'tableSchema'}{'columns'}} ) {
            warn "\t", $field->{'dc:title'}, "\n";
            #say '^' x length $field->{'dc:title'};
            #say Dumper $field;
            #say "\n";
            
            $summary_table->[$row_count++][$summary_column] = $field->{'dc:title'};
            
            if ($row_count > $max_rows ) {
                $max_rows = $row_count;
            }

            #my $meteor_link = '';
            #if ( $field->MeteorID() ) {
            #    $meteor_link = "\n\nMETeOR: " . meteor($field->MeteorID());
            #}

#            my $note_ref = '';
#            if (exists $domain eq 'HASH') {
#                if ( exists $domain->{Notes} && ! ($field->Type() =~ /^Date/) ) {
#                    
#                    my $note = $domain->{Notes};
#                    $note =~ s/\n/\n  /sg;
#                    $note =~ s/\n\s*$//s;
#                    
#                    $note_ref = '[#tn_' . lc $record->rec_type() . $note_no . ']';
#                    $notes .= '.. ' . "$note_ref\n" . '  ' . $note . "\n";
#                    $note_ref = ' ' . $note_ref . '_';
#                    $note_no++;
#                }
#            }
            
            $csv->say($fh, [
                '`' . $field->{'dc:title'} . '`_'
                . ' (' . $field->{'name'} . ')'
,#                . "$note_ref\n\n"
#                . $meteor_link,
                format_datatype($field),
                format_domain($field, \%field_fk),
            ]);
        }
    }

#    print Dumper $summary_table;

#    foreach my $row (@{$summary_table}) {
#        $csv->say($summary_fh, $row);
#    }

#    generate_definitions();
}

sub format_datatype {
    my $field    = shift;
    
    my $formatted_dt;
    if ( ref $field->{datatype} eq 'HASH' ) {
        $formatted_dt = $field->{datatype}{base};
        if ( exists $field->{datatype}{length} ) {
            $formatted_dt .= '[' . $field->{datatype}{length} .']';
        };
    }
    else {
        $formatted_dt = $field->{datatype};
    }
    
    return $formatted_dt;
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

    my $field    = shift;
    my $field_fk = shift;
    
    if ( ! ref $field->{datatype} ) {
        return $field->{datatype};
    }

    if ( my $rv = format_fk($field, $field_fk) ) {
        return $rv;
    }
    
    return '';

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

    }
    
    if ( ! $ret_str ) {
        $ret_str = $field->Domain() || ''; 
    }

    return $ret_str;
}

sub format_fk {
    my $field    = shift;
    my $field_fk = shift;
    
    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 2 });

    my $rv = undef;
    my $aoh;

    if ( exists $field_fk->{$field->{name}} ) {

        $rv = '';
        $aoh = $csv->csv(
            in      => $field_fk->{$field->{name}}{resource},
            headers => "auto"
        );
        
        my $newline = "";
        foreach my $item ( @{$aoh} ) {
            my $key   = $item->{id};
            my $value = $item->{description};
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
