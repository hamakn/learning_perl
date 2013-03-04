#!/usr/bin/perl
# 2章の練習問題
use 5.016;
use utf8;
use warnings;

## Q1. 半径12.5の演習の長さを求めろ
my $PI = 3.14159;
say 12.5 * 2 * $PI;

## Q2. 半径を入力からもらうようにする
print "please input r: ";
chomp(my $r = <STDIN>);
say $r * 2 * $PI;

## Q3. $rが負の値の場合は0を表示するようにする
if ( $r < 0 ) { $r = 0 }
say $r * 2 * $PI;

## Q4. 数を2回読み込んで、その積を表示する
print "please input x: ";
chomp(my $x = <STDIN>);
print "please input y: ";
chomp(my $y = <STDIN>);
say "the product is: " . $x * $y;

## Q5. 文字列と数を読み込んで、数の回数分文字列を出力する
print "please input some string: ";
my $str = <STDIN>; # あとで改行を使うために改行しない
print "please input number: ";
chomp(my $num = <STDIN>);
if ( $num < 0 ) { $num = 0 }
my $n = 0;
print "result is:\n" . $str x $num;
