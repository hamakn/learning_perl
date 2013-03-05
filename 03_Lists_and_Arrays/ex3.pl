#!/usr/bin/perl
# 3章の練習問題
use 5.016;
use warnings;
use utf8;

# 文字列のリストを読み込んで、逆順に表示するプログラム
# 入力終了はUnixではCtrl-D, WindowsではCtrl-Z
say "-- 3.11.1 --";
say "input some lines (Ctrl-D or Ctrl-Z to end):";
chomp(my @input_lines = <STDIN>);
say "output reversed input lines:";
foreach (reverse @input_lines) { say }

# 数のリストを数に対応する人名に変換して出力するプログラム
my @members = qw/nil fred betty barney dino wilma pebbles bamm-bamm/;
$members[0] = undef;

say "-- 3.11.2 --";
say "input some integers [1-7] (Ctrl-D or Ctrl-Z to end):";
chomp(my @input_numbers = <STDIN>);
say "output members:";
foreach (@input_numbers) {
  # TODO 数値のチェック方法がわからない
  if ($_ > 0 && $_ <= ($#members + 1)) {
    say "$_: $members[$_]";
  } else {
    say "$_: Out of range";
  }
}

# 入力した文字列をコードポイント順にsortして表示する
say "-- 3.11.3 --";
say "sorted 3.11.1 inputs:";
foreach (sort @input_lines) { say }
