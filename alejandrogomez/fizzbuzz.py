#!/usr/bin/env python
# encoding: utf-8

import unittest

_FIZZ = "Fizz"
_BUZZ = "Buzz"
_FIZZBUZZ = _FIZZ + _BUZZ + '?'

class FizzBuzz:
	def __init__(self):
		self.is_fizzbuzz = lambda x: x % 3 == 0 and x % 5 == 0
		self.is_fizz = lambda x: x % 3 == 0 or '3' in str(x)
		self.is_buzz = lambda x: x % 5 == 0 or '5' in str(x)
		
	def fizzbuzz(self, number):
		"""
		Returns: 
			"Fizz" if number is divisible by 3 or has a 3 in it.
			"Buzz" if number is divisible by 5 or has a 5 in it.
			"FizzBuzz?" if number is divisible by 3 and 5.
		"""
		if self.is_fizzbuzz(number):
			return _FIZZBUZZ
		elif self.is_fizz(number):
			return _FIZZ
		elif self.is_buzz(number):
			return _BUZZ
		return number


class FizzBuzzTests(unittest.TestCase):
	def setUp(self):
		self.sut = FizzBuzz()
	
	def test_fizzbuzz(self):
		for i in range(1, 101):
			if i % 3 == 0 and i % 5 == 0:
				self.assertEquals(_FIZZBUZZ, self.sut.fizzbuzz(i))
			elif i % 3 == 0 or '3' in str(i):
				self.assertEquals(_FIZZ, self.sut.fizzbuzz(i))
			elif i % 5 == 0 or '5' in str(i):
				self.assertEquals(_BUZZ, self.sut.fizzbuzz(i))
			else:
				self.assertEquals(i, self.sut.fizzbuzz(i))

if __name__ == '__main__':
	unittest.main()