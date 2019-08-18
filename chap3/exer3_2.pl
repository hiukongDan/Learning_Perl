use warnings;

@names = qw(
	fred betty barney dino wilma pebbles bamm-bamm
);

chomp (@indices = <STDIN>);
print "\n";

foreach $index (@indices){
	print $names[$index]."\n";
}

