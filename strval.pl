#!/usr/bin/perl -w

use strict;
use warnings;

package asd;

use overload '""' => sub { print "WUT\n"; 'qwe' };

sub new {

    my ( $proto ) = @_;

    return bless( {}, ( ref( $proto ) || $proto ) );
}

package main;

my $o = asd -> new();

$o ||= 1;
my $dummy = ( $o || 2 );
if( $o ) {

    1;
}

exit 0;

__END__

