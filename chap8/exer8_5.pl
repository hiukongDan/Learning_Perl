use warnings;
use strict;
use utf8;

while(<>){
    chomp;
    if (/\b(?<word>[a-zA-Z0-9_]*a)\b(?<another>(?:[\d\D]){0,5})/){
        print "Matched: |$`'$+{word}'$'|\n";
    }
    else{
        print "No Match: |$_|\n";
    }
}

