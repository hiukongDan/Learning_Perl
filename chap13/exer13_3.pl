use warnings;
use strict;

print "Enter a directory: ";
chomp (my $dir = <STDIN>);

my $dh;

if ($dir =~ m/\A\s*\z/){
    print "Change to home.\n";
    opendir $dh, $ARGV{HOME};
} else { 
    print "Chang to $dir\n";
    opendir $dh, $dir or die "Can't open directory: $dir";
}

while (my $file = readdir $dh){
    print "$file\n";
}
closedir $dh;