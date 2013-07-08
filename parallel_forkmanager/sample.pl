use strict;
use warnings;
use utf8;

use LWP::Simple;
use Parallel::ForkManager;

my @links = (
    ["http://www.chama.ne.jp/htaccess_sample/index.htm", "basic.txt"],
    ["http://www.google.com", "google.txt"],
    ["http://www.yahoo.co.jp", "yahoo.txt"],
);

my $pm = new Parallel::ForkManager(30);

foreach my $linkarray (@links) {
    $pm->start and next;

    for (my $i = 0; $i < 60; $i++) {
        print "$i\n";
        sleep(1);
    }

    my ($link, $fn) = @$linkarray;
    #warn "Cannot get $fn from $link"
    #  if
    getstore($link, $fn);

    $pm->finish;
}
$pm->wait_all_children;
