use warnings;
use strict;

my @columns = (1..9, 0);

my @ruler = (@columns, @columns, @columns, @columns, @columns);

print "Enter alignment column width: ";
chomp(my $length = <STDIN>);

while($length > @ruler){
	push @ruler, @columns;
}

print "Enter lines: \n";
my @lines;
while(<STDIN>){
	chomp;
	push @lines, $_;
}

print @ruler;
print "\n";

foreach(@lines){
	printf "%*s\n", $length, $_;
}
