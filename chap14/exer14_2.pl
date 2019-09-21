use strict;
use warnings;

my %last_name = qw{
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @last_names = sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}" or
    "\L$a" cmp "\L$b";
} keys %last_name;

foreach (@last_names){
    print "$_ => $last_name{$_}\n";
}