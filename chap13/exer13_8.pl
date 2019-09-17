use warnings;
use strict;

my @files = glob '*';
foreach (@files){
    if (-l $_){
        my $file = readlink $_;
        print "$_ => $file\n";
    }
    else {print "$_ is not a symbolic link\n"}
}