use warnings;
use strict;

print "Enter a directory: ";
chomp (my $dir = <STDIN>);


if ($dir =~ m/\A\s*\z/){
    print "Change to home.\n";
    chdir;
} else { 
    print "Chang to $dir\n";
    chdir $dir or die "Cannot chdir to $dir";
}

my @items = glob '*';

foreach (@items) {
    print "$_\n";
}