use warnings;
use strict;

while(<STDIN>){
    print "$_" if (/(\S)\1/);
}