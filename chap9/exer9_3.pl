#!/usr/bin/perl
## Copyright (C) 2019 by Hiukong Dan

use warnings;
use strict;
use utf8;

if (@ARGV < 1){
    die "Files' name should be given: $!";
}

open FILEIN, '<', $ARGV[0];

open FILEOUT, '>', $ARGV[0].".out";

while(<FILEIN>){
    chomp;
    s/fred/\n/gi;
    s/wilma/Fred/gi;
    s/\n/Wilma/gi;
    print FILEOUT ($_."\n");
}

close FILEIN;
close FILEOUT;