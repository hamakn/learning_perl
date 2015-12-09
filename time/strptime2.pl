use 5.016;
use strict;
use warnings;

my $data = '011222';

use Data::Dumper;
use DateTime;
use DateTime::Format::Strptime;

my $strp = DateTime::Format::Strptime->new(
    pattern   => '%H%M%S',
);

print Dumper $strp->parse_datetime($data)->epoch - $strp->parse_datetime('000000')->epoch;
