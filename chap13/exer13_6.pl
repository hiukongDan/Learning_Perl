use strict;
use warnings;

if (@ARGV < 2) {die "Not enough arguments."}

my ($old, $new) = @ARGV;

link $old, $new or die "System not surporting linking $old to $new";