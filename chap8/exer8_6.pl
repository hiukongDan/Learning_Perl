use strict;
use warnings;
use utf8;

while(<>){
    chomp;
    if($_ =~ m/([\d\D]*) $/){
        print "Matched: $1*\n";
    }
    else{
        print "No match: $_\n";
    }
}