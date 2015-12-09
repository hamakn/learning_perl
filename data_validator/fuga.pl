use strict;
use warnings;

use Test::More;
use Data::Validator;

my $v = Data::Validator->new(
    # ???
    track_name => +{ isa => 'Str', default => '' },
    artist_name => +{ isa => 'Maybe[Str]', default => '' },
);

my $args = +{
    track_name => undef,
    artist_name => 'aaa',
};
$args = $v->validate($args);

use Data::Dumper;
print Dumper $args;

is($args->{track_name}, '');
is($args->{artist_name}, 'aaa');

done_testing;
