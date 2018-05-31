#!/usr/bin/env perl

use warnings FATAL => 'all';
use 5.20.0;

use HTML::Element;
use HTML::Entities;
use File::Basename qw/dirname/;
use FindBin qw/$RealDir/;
use HTML::TreeBuilder;
use File::Slurp::Tiny qw/read_file write_file read_dir/;
use Getopt::Long;
use DateTime;

use SD::PrinceXML::Client 21;


my $src = dirname( $RealDir ) . '/doc/build/singlehtml';
my $dst = dirname( $RealDir ) . '/doc/_static';

GetOptions (
    "webservice=s"  => \my $webservice,
    "output=s"      => \my $output_file,
    "f|forcesphinx" => \my $sphinx,
) or die("Error in command line arguments\n");

# Quick and dirty say to work out which spec we're rendering
my $spec_type = 'PMHC';
$webservice  ||= 'https://prince.sdintra.net';
$output_file ||= $dst . "/$spec_type.pdf";

#=======================================================================
# Use Sphinx to generate the source
#=======================================================================

if( $sphinx || ! -f $src . '/index.html' ) {
    say "Building singlehtml using Sphinx";
    qx"$RealDir/make.sh singlehtml 2>&1";
}

#=======================================================================
# Prepare the generated source for sending to Prince
#=======================================================================

say "Preparing for Prince";

# Add the cover page and TOC

my $tree = HTML::TreeBuilder->new( ignore_unknown => 0 );
# Open source file manually so we're opening it with the UTF8 encoding
open( my $input_fh, '<:encoding(UTF-8)', $src . '/index.html' )
    || die( "Cannot open HTML file for reading: $!" );
$tree->parse_file( $input_fh );

addCover( $tree );
createTOC( $tree );
fixLinks( $tree );
#fixExternalLinks( $tree ); Turned off as sometimes we need the URL contextually

write_file( $src . '/index_pdf.html', $tree->as_HTML());


# Fix the font references in CSS
foreach my $file ( read_dir( $src . '/_static/css/' ) ) {
    my $css_file = $src . '/_static/css/' . $file;
    my $css_src = read_file( $css_file );
    $css_src =~ s|../fonts/||g;
    write_file( $css_file, $css_src );
}


#=======================================================================
# Send the data to Prince for rendering
#=======================================================================

say "Sending to Prince";

my $client = SD::PrinceXML::Client->new(
    webservice       => $webservice,
    send_literal_url => 0,
    url              => 'file://' . $src . '/index_pdf.html'
);


# Send the fonts

foreach my $font ( read_dir( $src . '/_static/fonts' ) ) {
    my $full_path = $src . '/_static/fonts/' . $font;
    next if -d $full_path;
    $client->add_extra_file( $full_path );
}

# Retrieve the PDF
my $output_pdf = $client->pdf;

# Write the output to the output file
say "Writing to $output_file";
write_file( $output_file, $output_pdf );


# Compress the resulting file
say "Compressing with pdftk";
my $pwd = dirname( $RealDir );
`docker run -ti -v $pwd:/work mnuessler/pdftk doc/_static/$spec_type.pdf output doc/_static/$spec_type-smaller.pdf compress`;
`mv doc/_static/$spec_type-smaller.pdf doc/_static/$spec_type.pdf`;


#=======================================================================
# Content utility methods
#=======================================================================


# Finds the first h1 in the document (which is the document title) and
# inserts a logo before it. Note that the logo is styled in CSS to add
# a nice margin under it. The CSS also forces the TOC to the next page
# and turns off page numbering on page one, thus giving us a nice
# looking cover page.
sub addCover {
    #@type HTML::Element
    my $tree = shift;

    ( my $logo_position ) = $tree->find_by_tag_name( 'h1' );
    $logo_position->preinsert( [ 'img', { src => '_static/logo.png', class => 'logo' } ] );

    chomp(my $commit_timestamp = `git log --perl-regexp --author='^((?!Jenkins).*)\$' -1 --format=%ct 2>/dev/null`);
    my $print_date = DateTime->from_epoch( epoch => $commit_timestamp * 1 )->set_time_zone('Australia/Canberra');

    chomp( my $commit_hash = `git log --perl-regexp --author='^((?!Jenkins).*)\$' -1 --format=%H 2>/dev/null`);

    ( my $end_of_page_1 ) = $tree->find_by_tag_name( 'h3' );
    $end_of_page_1 = $tree->look_down(
        _tag => 'div',
        class => qr'toctree-wrapper'
    );
    $end_of_page_1->preinsert(
        [ 'p', { class => 'commit_date' }, 'As at ' . $print_date->strftime('%e %B, %Y') ],
        [ 'p', { class => 'commit_hash' }, $commit_hash ],
    );
}

# Finds all interesting header tags in the document and creates a
# matching list-of-lists linking to them. HTML is annoying in that the
# headers separate sections rather than <sections> defining the layout.
# It would make more sense, to me, to have
# <section>
#    <h>Top level header</h>  <!-- Note not h1, just h -->
#    <section>
#       <h>This would be equivalent to h2</h>  <!-- Note again: not h2, just h -->
#    </section>
# </section>
# That way you could easily create a recursive function that didn't care
# about the type of header tag it was, just that it belonged to that
# nested level of document. Anyway, rant over. Thanks for reading. - RM
sub createTOC {
    #@type HTML::Element
    my $tree = shift;

    my ( $top_level_tag, $second_level_tag ) = qw/h2 h3/;

    my @interesting_header_nodes = $tree->find_by_tag_name( $top_level_tag, $second_level_tag );

    #@type HTML::Element
    my $top_level_list = HTML::Element->new( 'ul' );
    $top_level_list->attr( 'id', 'prince-toc' );

    #@type HTML::Element
    my $top_level_entry;

    #@type HTML::Element
    my $second_level_sublist;

    my $inside_appendix = 0;

    foreach my $header_node ( @interesting_header_nodes ) {

        if ( lc $header_node->tag eq $top_level_tag ) {

            # Finish any top level we're working on
            if ( $top_level_entry ) {
                if ( $second_level_sublist ) {
                    $top_level_entry->push_content( $second_level_sublist );
                    $second_level_sublist = undef;
                }
                $top_level_list->push_content( $top_level_entry );
                $top_level_entry = undef;
            }

            $top_level_entry = HTML::Element->new( 'li' );

            $top_level_entry->push_content( reanchor( $header_node ));

            $inside_appendix = $header_node->as_text =~ /Appendix/;

        }

        if ( lc $header_node->tag eq $second_level_tag && ! $inside_appendix ) {
            my $second_level_entry = HTML::Element->new( 'li' );
            $second_level_entry->push_content( reanchor( $header_node ));

            if ( !$second_level_sublist ) {
                $second_level_sublist = HTML::Element->new( 'ul' );
            }

            $second_level_sublist->push_content( $second_level_entry );
        }

    }
    if ( $top_level_entry ) {
        if ( $second_level_sublist ) {
            $top_level_entry->push_content( $second_level_sublist );
        }
        $top_level_list->push_content( $top_level_entry );
    }

    # Insert it into the document before the TOC wrapper
    my $toc_position = $tree->look_down(
        _tag => 'div',
        class => qr'toctree-wrapper'
    );
    $toc_position->preinsert( ['h2', 'Table of Contents'], $top_level_list );
}


# Headers in the HTML are <h3>Section Heading<a href="#section_heading">¶</a></h3>
# This returns them is <a href="#secion_heading>Section Heading</a> for
# use in the table of contents
sub reanchor {
    #@type HTML::Element
    my $el = shift;

    #@type HTML::Element
    my $anchor = $el->find_by_tag_name( 'a' );
    my $href = $anchor->attr( 'href' );

    # Remove the anchor from the <h3> so we don't get the ¶ when
    # rendering the h3 as text. We hide it in the PDF with CSS anyway
    $anchor->detach();
    my $text = $el->as_text;

    my $rv = HTML::Element->new( 'a' );
    $rv->attr( 'href', $href );
    $rv->push_content( $text );

    return $rv;
}

# Sphinx optimises away some elements that are required for internal
# links to work.
sub fixLinks {
    #@type HTML::Element
    my $tree = shift;


    # Internal links should begin with '#' not index.html
    # <a href="index.html#anchor"> -> <a href="#anchor">
    my @anchors = $tree->look_down(
        _tag => 'a',
        href => qr/^index.html/
    );
    foreach my $anchor ( @anchors ) {
        my $href = $anchor->attr( 'href' );
        $href =~ s/^index.html//;
        $anchor->attr( 'href' => $href )
    }


    # Internal links to go empty spans that Prince optimizes away so we
    # add a zero width space and float the element (so it takes no room)
    my @spans = grep { $_->is_empty } $tree->find_by_tag_name( 'span' );
    foreach my $span ( @spans ) {
        $span->attr( 'style' => 'font-size: 0.01px; line-height: 0.01px; display:inline-block; float:right' );
        $span->push_content( HTML::Entities::decode_entities( '&#8203;' ));
    }
}

# Some external links show the URL. Let's try to get the <title> and
# use it rather than the URL so it looks prettier
# We should use this on the Sphinx source and fix _that_ where
# appropriate
sub fixExternalLinks {
    #@type HTML::Element
    my $tree = shift;
    if( 0 ) {
        my @external_anchors = $tree->look_down(
            _tag => 'a',
            href => qr/^http/
        );
        foreach my $anchor ( @external_anchors ) {
            my $content = $anchor->as_text;
            my $href = $anchor->attr( 'href' );
            if ( $content =~ /^\s*$href\s*$/ ) {

                eval {
                    my $source_tree = HTML::TreeBuilder->new_from_url( $href );
                    my $title_tag = $source_tree->find_by_tag_name( 'title' );

                    if ( $title_tag ) {
                        $anchor->delete_content->push_content( $title_tag->as_text )
                    }
                }
            }
        }
    }
}