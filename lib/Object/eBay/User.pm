package Object::eBay::User;
our $VERSION = '0.0.2';

use Class::Std; {
    use warnings;
    use strict;
    use base qw( Object::eBay );

    sub api_call       { "GetUser" };
    sub response_field { "User"    };

    __PACKAGE__->simple_attributes(qw{
        FeedbackScore
    });

    __PACKAGE__->complex_attributes({
        FeedbackPrivate => {
            class => 'Boolean',
        }
    });

}

1;

__END__

=head1 NAME
 
Object::eBay::User - Represents an eBay user
 
 
=head1 VERSION
 
This documentation refers to Object::eBay::User version 0.0.2
 
 
=head1 SYNOPSIS
 
    # Assuming that Object::eBay has been initialized
    use Object::eBay::User;
    my $user = Object::eBay::User->new({ user_id => 'example' });
    print "Feedback Score: ", $user->feedback_score(), "\n";
  
=head1 DESCRIPTION
 
Represents an eBay user.
 
=head1 METHODS 
 
=head2 new

Requires a single hashref as the argument.  The hashref should contain a key
'user_id' whose value is the ID of the user you want the new object to
represent.

=head2 feedback_score

Returns an integere indicating the user's feedback score.

=head2 feedback_private

Returns 'true' if the user's feedback score is private.  Returns 'false' if
the user's feedback score is public.  In future releases, the return value may
change into an object which correctly handles boolean context however string
context will retain the current behavior.  So, if you depend on the true/false
strings, please stringify the return value fo C<feedback_private> first.
 
=head1 DIAGNOSTICS
 
None
 
=head1 CONFIGURATION AND ENVIRONMENT
 
Object::eBay::User requires no configuration files or environment variables.
 
=head1 DEPENDENCIES
 
=over 4

=item * Class::Std

=item * Object::eBay

=back
 
=head1 INCOMPATIBILITIES
 
None known.
 
=head1 BUGS AND LIMITATIONS

Please report any bugs or feature requests to
C<bug-object-ebay-user at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Object-eBay>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Object::eBay

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Object-eBay>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Object-eBay>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Object-eBay>

=item * Search CPAN

L<http://search.cpan.org/dist/Object-eBay>

=back

=head1 ACKNOWLEDGEMENTS

=head1 AUTHOR

Michael Hendricks  <michael@ndrix.org>

=head1 LICENSE AND COPYRIGHT
 
Copyright (c) 2006 Michael Hendricks (<michael@ndrix.org>). All rights
reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
 