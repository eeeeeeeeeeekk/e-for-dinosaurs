use strict;
use warnings;
use diagnostics;

use v3;

my ($iterations, $sum_total, $temp) = (0, 0, 0);


print "Number of iterations: ";
# get from stdin
$iterations = <stdin>;

for(my $i = 0; $i < $iterations; $i++){
    $temp = 0;
    while ($temp < 1) {
        $temp += rand();
        $sum_total++;
    }
}


printf("e = %f\n", $sum_total / $iterations);