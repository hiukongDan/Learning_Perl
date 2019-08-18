$pi = 3.141592654;
$radius = <STDIN>;
$circumference = $radius >= 0 ?2 * $pi * $radius:0;

print "The circumference of the circle with radius of ".$radius." is ".$circumference;
