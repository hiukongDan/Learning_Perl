use warnings;
use strict;

my @env = %ENV;
my $col_length = length $env[0];

foreach my $key (sort keys %ENV){
	printf "%-*s%s\n", $col_length+5, $key, $ENV{$key};
}
