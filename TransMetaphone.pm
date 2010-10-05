# ============================================================================
package Text::Phonetic::TransMetaphone;
# ============================================================================
use utf8;

use Moose;
extends qw(Text::Phonetic);

__PACKAGE__->meta->make_immutable;

our $VERSION = "1.0";

sub _predicates {
	return 'Text::TransMetaphone';
}

sub _do_encode {
	my ($self,$string) = @_;
	return join("", Text::TransMetaphone::trans_metaphone( $string ));
}

1;

=encoding utf8

=pod

=head1 NAME

Text::Phonetic::TransMetaphone - TransMetaphone algorithm

=head1 SYNOPSIS

      use Text::Phonetic::TransMetaphone;
  
      my $phonetic = Text::Phonetic::TransMetaphone->new();
      $encoded_string = $phonetic->encode($string);

=head1 DESCRIPTION

The TransMetaphone search algorithm is a phonetic algorithm.

=head1 AUTHOR

    Stefan Gipper <stefanos@cpan.org>, http://www.coder-world.de/

=head1 COPYRIGHT

Text::Phonetic::TransMetaphone is Copyright (c) 2010 Stefan Gipper
All rights reserved.

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

=head1 SEE ALSO



=cut
