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
    $_ =~ s/fred/Larry/gi;
    print FILEOUT ($_);
}

close FILEIN;
close FILEOUT;