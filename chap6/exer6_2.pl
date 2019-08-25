use warnings;
use strict;

my %words_frequency;

while(<STDIN>){
	chomp;
	$words_frequency{$_} += 1;
}

printf "%s   %s", "name", "frequency\n";

foreach my $key (sort keys %words_frequency){
	print "$key => $words_frequency{$key}\n";
}

