#!/usr/bin/perl
## Copyright (C) 2019 by Hiukong Dan


use warnings;
use strict;
use utf8;

print "Hello there";

my $what = "Barney|Wilma";

while(<STDIN>){
    if (m/($what){3}/g){
        print;
    }
}

