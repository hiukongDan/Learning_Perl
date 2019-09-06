use warnings;
use strict;
use utf8;


my $ran = int(1 + rand 100);
print "Enter a number between 1 and 100(including): ";
while (<STDIN>){
    chomp;
    if (/quit|exit/i){
        print "Bye-bye!\n";
        last;
    } elsif ($_ == $ran){
        print "You have it!\n";
        last;
    } elsif ($_ < $ran){
        print "Too low!\n";
        next;
    } elsif ($_ > $ran){
        print "Too high!\n";
        next;
    } else{
        print "Not a number.\n";
    }
}