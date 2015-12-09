use 5.016;
use strict;
use warnings;
use utf8;

use Data::Dumper;
use Unicode::Japanese;
use Encode;

my $str = "iあa";
print Dumper Encode::encode('utf8', $str x 10);
print Dumper length $str x 10;

my $strZ = Unicode::Japanese->new($str x 10)->h2z;
print Dumper $strZ;
print Dumper length $strZ;

for (my $i = 0; $i < 20; $i++) {
    print Encode::encode('utf8', (substr $str, 0, $i));
    print "\n";
}

# 右側に全角スペースを足して50文字にする
for (my $i = 0; $i < 40; $i++) {
    my $s = $str x $i;
    my $l = length $s;
    my $str50 = substr($s, 0, 50) . '　' x (50 - $l);
    $str50 = Unicode::Japanese->new($str50)->h2z->get;
    print Dumper sprintf '[%s]', $str50;
}

