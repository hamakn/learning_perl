def foo
  <<bar
end
def hoge
  <<fuga
end
  here is heredoc for foo
bar
  here is heredoc for hoge
fuga

p foo
p hoge
