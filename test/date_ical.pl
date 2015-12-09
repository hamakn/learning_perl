#!/usr/bin/perl

use Test::Simple tests => 2;
use Date::ICal;

my $ical = Date::ICal->new;
ok( defined $ical,             "new() returned something" );
ok( $ical->isa('Date::ICal'),  "  and it's the right class" );
