#!/usr/bin/perl

use strict;
use warnings;

my %do_these;
foreach(@ARGV){
    $do_these{$_} = 1;
}

while(<>){
    if(m/\A## Copyright/){
        delete $do_these{$ARGV};
    }
}

@ARGV = sort keys %do_these;

$^I = ".bak";

while(<>){
    if(m/\A#!/){
        $_ .= "## Copyright (C) 2019 by Hiukong Dan\n";
    }
    print;
}

