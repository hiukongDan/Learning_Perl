use warnings;
use strict;

sub total{
my($sum);
	foreach(@_){
		$sum += $_;
	}
	$sum;
}

my $sum = total(1..1000);
print "The sum from 1 to 1000 is $sum.\n";
