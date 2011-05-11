#!/usr/bin/env ruby

$: << File.join(File.expand_path(File.dirname(__FILE__)), "..")

require 'lib/fizzbuzz.rb'

list = FizzBuzz::NumberList.new(1..100)
list.print_to(STDOUT)
