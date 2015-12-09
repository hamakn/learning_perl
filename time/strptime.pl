use 5.016;
use strict;
use warnings;

use Data::Dumper;
use DateTime;
use DateTime::Format::Strptime;

my $strp = DateTime::Format::Strptime->new(
    pattern   => '%T',
    locale    => 'en_AU',
    time_zone => 'Australia/Melbourne',
);

my $dt = $strp->parse_datetime('23:16:42');
warn Dumper $dt->hms;

my $strp2 = DateTime::Format::Strptime->new(
    pattern   => '%F %T',
);

my $dt2 = $strp2->parse_datetime('2013-03-31 23:16:42');
warn Dumper $dt2->ymd;
my $dt3 = $strp2->parse_datetime('2013-03-31 23:16:42');
warn Dumper $dt2->ymd;

print Dumper $dt2 == $dt3;
print Dumper $dt == $dt3;
