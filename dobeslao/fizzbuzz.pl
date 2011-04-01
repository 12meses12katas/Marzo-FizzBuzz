#!/usr/bin/perl

#use strict;

for ($i = 1; $i <= 100; $i++) {
#	print " hola  $i\n";
	$fizzbuzz = '';

	if ( $i%3 == 0 || $i =~ m/3/ ) {
		$fizzbuzz = 'Fizz';
	}

	if ( $i%5 == 0 || $i =~ m/5/ ) {
		$fizzbuzz .= 'Buzz';
	}
	
	print length($fizzbuzz) == 0 ? "$i" : "$fizzbuzz";
	print "\n";
}
