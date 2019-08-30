use warnings;
use strict;
use utf8;

while(<>){
    chomp;
    if (/match/){
        print "Matched: |$`<$&>$'|\n";
    }
    else{
        print "No Match: |$_|\n";
    }
}

