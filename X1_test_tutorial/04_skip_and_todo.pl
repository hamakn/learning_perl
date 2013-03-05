use Test::More 'no_plan';

is( 1 + 1, 2 );

SKIP: {
  skip("this test will be skip");
  is( 1 + 1, 3 );
}

TODO: {
  local $TODO = "not yet implemented";
  is( 1 + 1, 4 );
}
