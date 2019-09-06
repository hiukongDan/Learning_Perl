use warnings;
use strict;

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEF} = undef;

my @env = %ENV;
my $col_length = length $env[0];

foreach my $key (sort keys %ENV){
	printf "%-*s%s\n", $col_length+5, $key, $ENV{$key} // "undefined value";
}
