#!/usr/bin/perl -w

use Test::More tests => 8;

use Date::ICal;

$ical = Date::ICal->new( year => 1964, month => 10, day => 16,
                         hour => 16, min => 12, sec => 47,
                         offset => '+0000' );

ok( defined $ical,            'new() returned something' );
ok( $ical->isa('Date::ICal'), "  and it's the right class" );
is( $ical->sec,     47,       '  sec()'   );
is( $ical->min,     12,       '  min()'   );
is( $ical->hour,    16,       '  hour()'  );
is( $ical->day,     16,       '  day()'   );
is( $ical->month,   10,       '  month()' );
is( $ical->year,    1964,     '  year()'  );
