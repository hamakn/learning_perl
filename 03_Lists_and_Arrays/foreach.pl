#!/usr/bin/perl
# foreach
use 5.016;
use warnings;
use utf8;

foreach my $rock (qw/ bedrock slate lava /) {
  say "One rock is $rock.";
}

# 制御変数は省略すると$_になる
foreach (qw/ bedrock slate lava /) {
  say "One rock is $_.";
}

my @arr = qw/ 1 2 3 4 /;
foreach (@arr) {
  $_ *= 2; # この$numはリストの要素なので *1
  say; # sayやprintも何も指定しないと$_を出力する
}
say "@arr"; # => 2 4 6 8  *1 値が変更されている

# reverse
my @range = 1..10;
say reverse(@range);
say @range; # reverseは非破壊的

# sort
my @vars = qw(98 99 100 101 102);
say sort(@vars); # => 1001011029899 # 数値順ではない
say @vars; # sortも非破壊的
