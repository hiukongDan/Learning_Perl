use warnings;
use strict;

die "You haven't enter any file names" unless @ARGV > 1;
my $old_file = shift @ARGV;
my $old_age = -M $old_file;

foreach (@ARGV){
    my $age = -M;
    ($old_age, $old_file) = ($age, $_)
        if ($age > $old_age);
}


print "The oldest file is: $old_file which has $old_age old age";