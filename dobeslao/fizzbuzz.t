#!/usr/bin/perl

use strict;
use warnings;
use Test::Simple tests => 6;

require 'fizzbuzz_func.pl';

ok ( fizzbuzz(1) eq '1', "number" );
ok ( fizzbuzz(3) eq 'Fizz', "fizz" );
ok ( fizzbuzz(13) eq 'Fizz', "fizz contains" );
ok ( fizzbuzz(5) eq 'Buzz', "buzz" );
ok ( fizzbuzz(56) eq 'Buzz', "buzz contains" );
ok ( fizzbuzz(15) eq 'FizzBuzz', "fizzbuzz" );
