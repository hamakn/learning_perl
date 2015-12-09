my $str = "[hoge][fuga]";

$str =~ /\[(.*?)\]/;
print $1;
