#!/usr/bin/perl
# variable interpolationとは、変数展開のこと
use 5.016;
use warnings;
use utf8;

my @rocks = qw( flintstone slate rubble );
say "Three rocks are: @rocks.";

my $email = "hamakata\@gmail.com"; # \を付けないと配列の変数展開になって死ぬ
say $email;

my @fred = qw(eating rocks is wrong);
my $fred = "right";
# "this is right[3]" と表示したいとする
say "this is $fred[3]";    # $fred[3]を使って"wrong"と表示してしまう
say "this is ${fred}[3]";  # ブレースで保護したのでrightが出る
say "this is $fred"."[3]"; # これもOK
say "this is $fred\[3]";   # エスケープしたのでこれもOK
