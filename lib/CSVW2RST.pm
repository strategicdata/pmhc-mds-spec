package CSVW2RST;
use v5.10;
use strict;
use warnings;

use Carp;
use Template;
use File::Slurp;
use URI;
use Sort::Naturally;
use Digest::MD5 'md5_base64';
use Encode 'encode';
use File::ShareDir qw(module_dir);
use DDict;
use DDict::Utils qw(try_to_find_file);
use YAML::XS qw(LoadFile);
use Text::CSV_XS;

use Data::Dumper;

use constant METEOR_URL => 'http://meteor.aihw.gov.au/content/index.phtml/itemId/';

# Use our own version sequencing, since we want to track the generator code
# independent of the DDict module version.
use version; our $VERSION = qv('1');

sub generate {
    my ($class, %args) = @_;
    my $ddict;
   #my $datadir = module_dir(__PACKAGE__);
            # source is ./lib/auto/DDict/Document
    my @concepts;

    if ($args{ddict}) {
        $ddict = $args{ddict};
    } elsif ($args{spec}) {
        my ($spec, $version) = @args{'spec','version'};

        # Grab the data dictionary.
        my %args = ( class => "DDict::$spec" );
        $args{version} = $version if defined $version;

        $ddict = DDict->load(%args) or
            croak("Unable to load [$class]" .
                  (defined $version ? " [$version]" : ''));

        # Load the concept data if this is a NOCC data set.  This is an ugly
        # special case to avoid burdening the core with soon-to-be-deprecated
        # information that we intend to expunge shortly.
        if ($spec eq 'NOCC') {
            my $file = $ddict->try_to_find_file('nocc_concepts.yaml', $version);
            @concepts = LoadFile($file) if $file;
        }
    } else {
        croak("No ddict or spec given...\n");
    }

    # Now, render the documentation...

    my $vars = { ddict => $ddict, version => $VERSION,
                 anchor => \&_string_to_anchor,
                 meteor => sub { METEOR_URL . $_[0] },
                 structure_records  => [$ddict->all_records],
                 definition_records => [sort {
                     ncmp($a->{Title}, $b->{Title})
                 } ($ddict->all, @concepts)],
                 extra_css => $args{'extra_css'},
                 include_definitions => $args{'include_definitions'}, # NOCC
               };

    #print Dumper $ddict->all_records;
    
    my $summary_table;
    my $summary_row    = 0;
    my $summary_column = 0;
    
    open my $summary_fh, ">", '_doc/summary-table.csv' or die 'summary-table.csv' . ": $!";

    my $max_rows = 0;

    my $csv = Text::CSV_XS->new ({ binary => 1, auto_diag => 1 });
    foreach my $record ( $ddict->all_records ) {

       $summary_table->[0][$summary_column] = $record->rec_type();

        my $filename = '_doc/record/' . lc $record->rec_type() . ".csv";
        open my $fh, ">", $filename or die $filename . ": $!";

        my $size = 0;
        my $note_no = 1;
        my $notes = '';

        $csv->say($fh, [
            'Data Element (Field Name)',
            'Type [Length]',
            'Start',
            'Notes / Values',
        ]);

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
        print $fh_rst "Record length = $size" if $args{spec} ne 'PMHC';
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


    if ( $args{'include_definitions'} ) {
        generate_definitions($vars);
    }
}

sub generate_definitions {
    my $vars = shift;

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

#[%- notes_needs_space = 0 -%]
#[%- IF NOT source.Domain -%]
#<!-- Definition fallback -->
#[%- ELSIF source.Type.search('^Date') -%]
#<!-- this field deliberately left blank -->
#[%- ELSIF source.Domain.Set.size == 1 -%]
#[%-   FOR item IN source.Domain.Set -%]
#Value = <code>${item.key}</code>
#[%# representing <span class="justify">${item.value}</span> %]
#[%- notes_needs_space = 1 -%]
#[%-   END -%]
#[%- ELSIF source.Domain.Set -%]
#[%-   PROCESS keyed_domain domain=source.Domain.Set -%]
#[%- notes_needs_space = 1 -%]
#[%- ELSIF source.Domain.RangeSet -%]
#[%-   PROCESS keyed_domain domain=source.Domain.RangeSet -%]
#[%- notes_needs_space = 1 -%]
#[%- ELSIF NOT source.Domain.keys -%]
#[%     link_meteor_id(source.Domain) %]
#[%- ELSE -%]
#<pre>REVISIT: [%- THROW revisit Dumper.dump(source) -%]</pre>
#[%- END -%]

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

=head1 NAME

DDict::Document -- HTML DDict specification generation

=head1 VERSION

This documentation is for version 1 of the DDict::Document module.

=head1 SYNOPSIS

    use DDict::Document;
    my $html = DDict::Document->generate('NOCC', '01.70');
    print $html

    # or better yet:
    ddict-doc.pl -C NOCC -V 01.70 -o nocc-01.70.html

=head1 DESCRIPTION

This module automatically generates documentation from the DDict
specifications, designed for inclusion as an appendix to a larger document.
It focuses on data structure layout and meaning, including references to
official online definitions, etc.

=head1 METHODS

=over

=item B<generate> ($ddict)  (class method)

=item B<generate> ($spec, $version = undef)  (class method)

Generate the HTML documentation for a given specification, returning a string
containing the generated document.

$ddict is a ddict object to generate the specification from.  This must be
loaded and configured by the caller.  Alternately, the module can load the
DDict instance for you:

$spec is a string naming the specification to generate from, while $version is
an optional version number.

=back

=head1 AUTHOR

Daniel Pittman <support@strategicdata.com.au>

=cut
