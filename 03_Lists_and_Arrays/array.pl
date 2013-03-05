#!/usr/bin/perl
# Array
use 5.016;
use warnings;

my @arr = qw(a b c d);
say $#arr + 1; # => 4  配列のサイズ

$arr[10] = "k";
say $arr[10]; # => "k"
say $arr[-1]; # => "k"  最後の要素

my @arr2 = qw(hoge fuga piyo);
say @arr2;

# 配列の要素に配列を指定しても、配列の配列にはならない
my @children = qw(1 2 3 4);
my @parent = (@children, @children);
say $#parent; # => 7

# Rubyと異なり、配列の代入はコピーになる
my @old = qw(0 1 2 3 4);
my @new = @old;
@new[0] = "5";
say @old[0]; # => 0

#-- p.60
my @rocks = qw/ bedrock slate lava /;
my @tiny = ();
my @giant = 1..1e5;
my @stuff = (@giant, undef, @giant);
my $dino = "granite";
my @quarry = (@rocks, "crushed rock", @tiny, $dino);
say $#quarry; # => 4  @rocksの3つ、"crushed rock", $dinoの分
