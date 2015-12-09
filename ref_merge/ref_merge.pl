use 5.016;
use strict;
use warnings;
use Data::Dumper;

my $ref1 = +{
    key => 1,
    aaa => 'a',
    hash => +{
        ref1 => 1
    },
};

my $ref2 = +{
    key => 2,
    bbb => 'b',
    hash => +{
        ref2 => 2
    },
};

my $ref3 = { %$ref1, %$ref2, %{undef || +{}} };

# 後優先でmergeされる
print Dumper $ref3;

# 破壊的ではない
$ref3->{key} = 3;
print Dumper $ref3;
print Dumper $ref1;
print Dumper $ref2;
