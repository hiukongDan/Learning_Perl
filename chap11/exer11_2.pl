use warnings;
use strict;

use Time::Moment qw / /;

(my $year, my $month, my $day) = @ARGV;

my $dt1 = Time::Moment->new(
    year  => $year  // 1900,
    month => $month // 1,
    day   => $day   // 1
);

my $dt2 = Time::Moment->now;

my $years  = $dt1->delta_years($dt2);
my $months = $dt1->delta_months($dt2) % 12;
my $days = $dt1->delta_days($dt2) % 31;

printf "%d years, %d months and %d days", $years, $months, $days;