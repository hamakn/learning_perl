use strict;
use warnings;
use utf8;

use LWP::Simple;
use Parallel::Prefork;

my @links = (
    ["http://www.chama.ne.jp/htaccess_sample/index.htm", "basic.txt"],
    ["http://www.google.com", "google.txt"],
    ["http://www.yahoo.co.jp", "yahoo.txt"],
);

my $pm = Parallel::Prefork->new({
    max_workers  => 5,
    trap_signals => {
        TERM => 'TERM',
        HUP  => 'TERM',
        USR1 => undef,
    },
    spawn_interval => 3, # spawnのinterval。
});

# サンプル
# 各ワーカーは60まで数を数える
# TERMを受け取った子プロセスはterm!!を表示する
while ($pm->signal_received ne 'TERM') {
    $pm->start(
        # 子プロセスの処理内容
        sub {
            # 子プロセスがTERMを受け取った際の処理
            $SIG{TERM} = sub {
                print "$$: term!!\n";
            };

            for (my $i = 0; $i < 60; $i++) {
                print "$$: $i\n";
                sleep(1);
            }
            # 全て終わるとプロセス終了
            $pm->finish;
        }
    );
}
$pm->wait_all_children;
