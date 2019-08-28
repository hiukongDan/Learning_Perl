use strict;
use warnings;

while(<>){
    print "$_" if (/\bfred flintstone\b/);
}

while(<STDIN>){
    print "$_" if (/\bfred\b/);
}

