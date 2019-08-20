use warnings;
use strict;

sub average{
my($sum);
	if($#_+1 == 0){return 0}
	foreach(@_){
		$sum += $_;
	}
	$sum/($#_+1);
}

sub above_average{
my(@res);
my($ave) = average(@_);
	foreach(@_){
		if($_ > $ave){
			push @res, $_;
		}
	}
	@res;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
