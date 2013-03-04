Learning Perl
=============

Install Perl
------------

http://perlbrew.pl/

```
$ curl -kL http://install.perlbrew.pl | bash
$ sudo cpan install Module::Metadata  # for MacOSX Mountain Lion http://hiroki.jp/2013/02/18/6684/
$ echo "source ~/perl5/perlbrew/etc/bashrc" >> ~/.zshrc

$ perlbrew --version
$HOME/perl5/perlbrew/bin/perlbrew  - App::perlbrew/0.59
$ perlbrew init
$ perlbrew install perl-5.16.2
$ perl -v
This is perl 5, version 16, subversion 2 (v5.16.2) built for darwin-2level
```
