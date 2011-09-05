package PNI::Node::Perldata::Scalar;
use strict;
use parent 'PNI::Node';

sub init {
    my $node = shift;

    $node->add_input( 'in', data => 0 );

    $node->add_output('out');
}

sub task {
    my $node = shift;

    return 1 if $node->has_no_input_slot_changed;

    my $in  = $node->get_input('in');
    my $out = $node->get_output('out');

    if ( $in->is_scalar ) {
        $out->set_data( $in->get_data );
    }
    else {
        $out->set_data(undef);
    }
}

1;
__END__

=head1 NAME

PNI::Node::Perldata::Scalar

=cut

