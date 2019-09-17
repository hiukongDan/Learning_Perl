use warnings;
use strict;

if (@ARGV < 2) {die "Not enough arguments."}

my ($old, $new) = @ARGV;

rename $old, $new;