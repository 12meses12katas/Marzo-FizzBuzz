#!/usr/bin/perl -w

use strict;

require 'fizzbuzz_func.pl';

for (my $i = 1; $i <= 100; $i++) {
	print fizzbuzz($i) . "\n";
}
