#!/usr/bin/perl

use strict;
use warnings;

sub fizzbuzz {
	my $n = shift;
	my $fizzbuzz = '';

	if ( $n%3 == 0 || $n =~ m/3/ ) {
		$fizzbuzz = 'Fizz';
	}

	if ( $n%5 == 0 || $n =~ m/5/ ) {
		$fizzbuzz .= 'Buzz';
	}
	
	return length($fizzbuzz) == 0 ? "$n" : "$fizzbuzz";
}
1;
__END__
