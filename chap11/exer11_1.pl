use warnings;
use strict;

use Module::CoreList qw / /;

my %modules = %{$Module::CoreList::version{5.024}};

my @keys = keys %modules;
@keys = sort @keys;

foreach (@keys){
    print "$_ => $modules{$_}\n";
}

