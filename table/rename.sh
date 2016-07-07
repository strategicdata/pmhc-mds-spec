#!/usr/bin/env bash
perl -e '
FILE:for $file (@ARGV){
        ($new_name = $file) =~ s/.txt/.rst/;
        next FILE if -e $new_name;
        rename $file => $new_name;
}' *.txt