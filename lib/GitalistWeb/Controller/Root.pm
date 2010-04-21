package GitalistWeb::Controller::Root;

use strict;
use warnings;
use base 'Catalyst::Controller';

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config->{namespace} = '';

=head1 NAME

GitalistWeb::Controller::Root - Root Controller for GitalistWeb

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=cut

sub auto : Private {
	    my ( $self, $c ) = @_;

		    $c->res->content_type('text/html; charset=utf-8');
			    
				    return 1;
}


=head2 default

=cut



sub default : Private {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

=head2 end

Attempt to render a view, if needed.

=cut 

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Catalyst developer

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
