use warnings;
use strict;
use utf8;

while(<>){
    chomp;
    if (/\b([a-zA-Z0-9_]*a)\b/){
        print "Matched: |$`'$1'$'|\n";
    }
    else{
        print "No Match: |$_|\n";
    }
}

