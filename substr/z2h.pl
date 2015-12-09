use utf8;
use Encode;

my $str1 = "（）";
my $str2 = decode_utf8($str1);
$str2 =~ tr/（）/()/;
my $str3 = encode_utf8($str2);
print $str3;
