use 5.016;
use strict;
use warnings;

use Data::Dumper;

my $arr = [
    +{
        name => 'a',
        score => 10
    },
    +{
        name => 'b',
        score => 5
    },
    +{
        name => 'c',
        score => 7
    },
];

print Dumper [sort {$a->{score} <=> $b->{score}} @$arr];
