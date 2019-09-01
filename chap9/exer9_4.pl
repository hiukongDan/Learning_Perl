#!/usr/bin/perl
## Copyright (C) by Hiukong Dan

use strict;
use warnings;

$^I = ".bak";

while(<>){
    s/(#!\/.*)/$1## Copyright (C) 2019 by Hiukong Dan\n/s;
    print;
}