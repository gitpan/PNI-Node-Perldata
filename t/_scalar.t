use strict;
use PNI;
use Test::More;

my $scalar = PNI::node 'Perldata::Scalar';
isa_ok $scalar, 'PNI::Node::Perldata::Scalar';

my $in  = $scalar->get_input('in');
my $out = $scalar->get_output('out');

my $data1 = 1;
$in->set_data($data1);
$scalar->task;
is $out->get_data, $data1;

my $data2 = 'hello';
$in->set_data($data2);
$scalar->task;
is $out->get_data, $data2;

done_testing;
__END__
$in->set_data( [] );
$scalar->task;
is $out->get_data, undef;

$in->set_data( {} );
$scalar->task;
is $out->get_data, undef;


