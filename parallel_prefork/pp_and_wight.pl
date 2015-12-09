use strict;
use warnings;
use utf8;

use Parallel::Prefork;
use Wight;

my $pm = Parallel::Prefork->new({
    max_workers  => 1,
    trap_signals => {
        TERM => 'TERM',
        HUP  => 'TERM',
        USR1 => undef,
    }
});

while ($pm->signal_received ne 'TERM') {
    $pm->start(
        # 子プロセスの処理内容
        sub {
            # 子プロセスがTERMを受け取った際の処理
            my $wight = Wight->new;
            $SIG{TERM} = sub {
                print "$$: term!!\n";
            };

            for (my $i = 0; $i < 100; $i++) {
                print "$$: $i\n";
                $wight->visit('http://shop.daiei.co.jp/shop/ShopPageTop.do?shopid=0285');
                sleep(1);
            }
            # 全て終わるとプロセス終了
            $pm->finish;
        }
    );
}
$pm->wait_all_children;
