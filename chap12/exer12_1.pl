use strict;
use warnings;

sub test_file{
my($file_name) = @_;
    if (-e){
        print "$file_name exists.\n";
    } else {print "$file_name does not exists.\n"; return; }
    print "$file_name is readable.\n" if -r;
    print "$file_name is writable.\n" if -w;
    print "$file_name is executable.\n" if -x;
}

foreach (@ARGV){
    test_file($_);
}