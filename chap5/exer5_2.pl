use warnings;
use strict;

my @columns = (1..9, 0);

@columns = (@columns, @columns, @columns, @columns, @columns);

my @lines;
while(<STDIN>){
	chomp;
	push @lines, $_;
}

print @columns;
print "\n";

foreach(@lines){
	printf "%20s\n", $_;
}
