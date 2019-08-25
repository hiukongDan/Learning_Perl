use warnings;
use strict;

my %family_names = (
	fred => 'flintstone',
	barney => 'rubble',
	wilma => 'flintstone'
);

print "Enter a given name: ";

chomp(my $name = <STDIN>);

print "$name has a family name of $family_names{$name}.\n";
