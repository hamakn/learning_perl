use strict;
use warnings;

use Data::Validator;

use Data::Dumper;
sub p { warn Dumper shift }

my $v = Data::Validator->new(
    hoge => +{ isa => 'Maybe[Str]', default => '' }
);
my $args = $v->validate(+{ hoge => undef });
p $args;
