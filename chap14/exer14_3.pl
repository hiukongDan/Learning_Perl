use strict;
use warnings;

my ($str, $sub) = @ARGV
    if @ARGV > 1;
    
my @position;
my $index = -1;
while (1){
    $index += 1;
    $index = index($str, $sub, $index);
    if ($index < 0){
        last;
    }
    else {
        push @position, $index;
    }
}

print "The positions are @position" if @position > 1;
print "The position is @position" if @position == 1;