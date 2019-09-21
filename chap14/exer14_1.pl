use strict;
use warnings;


my $args = "";
while(<>){
    substr($args, 0, 0) = $_;
}

my @numbers = split /\s+/, $args;


foreach (@numbers){
   printf "%5d\n", $_;
}

