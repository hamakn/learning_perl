#!/usr/bin/perl
# each
use 5.016;
use warnings;
use utf8;

my @rocks = qw/ bedrock slate rubble granite /;
while( my( $index, $value) = each @rocks ) {
# foreach $index ( 0 .. $#rocks ) { # 同じ
  say "$index: $value";
}
# ruby
# rocks = %w(bedrock slate rubble granite)
# rocks.each_with_index do |value, index|
#   p "#{index}: #{value}"
# end
