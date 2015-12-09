use 5.016;
use strict;
use warnings;
use Data::Dumper;

my $a = [];

for (my $i = 0; $i < 100; $i++ ) {
    push $a, $i;
}

print Dumper $a;

$a = [@$a[0...10]];

print Dumper $a;
