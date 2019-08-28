use warnings;
use strict;

while(<STDIN>){
    print "$_" if (/\bwilma\b/ && /\bfred\b/);
}