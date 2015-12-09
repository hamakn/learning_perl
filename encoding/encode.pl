use 5.016;
use utf8;
use Encode;
use Encode::Guess qw/utf8 euc-jp shiftjis/;

my $str = 'あああ';

say guess_encoding($str)->name;

say $str eq encode_utf8($str);
say $str eq encode_utf8(encode_utf8($str));
say encode_utf8($str) eq encode_utf8(encode_utf8($str));

my $st2 = "a☆b☆";

print Encode::encode('cp932', $st2) . "\n";
