# coding: utf-8
# ↑ (ruby2.0以降であればdefault encodingはutf8なので不要)

str = "あああ"

p str.encoding
p str == str.encode("UTF-8")
p str == str.encode("UTF-8").encode("UTF-8")

p ["42064506530654"].pack("H*")
