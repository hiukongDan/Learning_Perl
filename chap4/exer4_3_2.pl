use warnings;
use strict;

use v5.10;

sub greet{
state $num = 0;
state @names;
my($name) = @_;
	
	if($num == 0){
		print "Hi $name! You are the first one here!\n";
	}
	else{
		foreach(@names){
			print "Hi $name! $_ is also here!\n";
		}
	}
	push @names, $name;
	$num += 1;
}

greet("Fred");
greet("Barney");
greet("Hiukong");
