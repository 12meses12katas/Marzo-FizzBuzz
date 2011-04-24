#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)), "..")
require 'lib/fizzbuzz.rb'

up_limit = ARGV[0].to_i
numbers = (1..up_limit).to_a
list = FizzBuzz::NumberList.new(numbers)
list.print_to(STDOUT)
