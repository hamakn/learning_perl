#!/usr/bin/perl
# 標準入力
use 5.016;
use warnings;
use utf8;

my $line = <STDIN>;
if ($line eq "\n") {
  say "That was just a blank line!";
} else {
  print "That line of input was: $line";
}
