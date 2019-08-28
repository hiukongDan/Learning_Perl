use warnings;
use strict;

while(<STDIN>){
    print "matched\n" if(/\b[a-zA-Z]*([a-z][A-Z]|[A-Z][a-z])[a-zA-Z]*\b/);
}

