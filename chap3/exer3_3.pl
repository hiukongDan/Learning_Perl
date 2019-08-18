use warnings;

chomp (@names = <STDIN>);

@names = sort @names;

print "@names"."\n";

foreach $name (@names){
	print "$name\n";
}
