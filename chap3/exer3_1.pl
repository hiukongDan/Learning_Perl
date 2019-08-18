chomp (@lines = <STDIN>);

print "\n";

@lines = reverse @lines;

foreach $line (@lines){
	print $line."\n";
	}
