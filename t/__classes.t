use strict;
use Test::More;

BEGIN {
    use_ok($_)
      or BAIL_OUT(" $_ module does not compile :-(")
      for qw(
      PNI::Node::Perldata
      PNI::Node::Perldata::Scalar
    );
}

isa_ok( $_, 'PNI::Node' ) for qw(
  PNI::Node::Perldata::Scalar
);

done_testing;

