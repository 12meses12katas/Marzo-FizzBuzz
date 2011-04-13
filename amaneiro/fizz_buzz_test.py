#!/usr/bin/python

import unittest
from fizz_buzz import FizzBuzz

class FizzBuzzTestCase(unittest.TestCase):

    def setUp(self):
        self.fb = FizzBuzz()
        self.numbers = self.fb.execute()

    def testCountUntil100(self):
        self.assertEqual(100, len(self.numbers))

    def testRaisesFizzWhenNumberIsMultipleOf3(self):
        self.assertEqual('Fizz', self.numbers[2])
        self.assertEqual('Fizz', self.numbers[98])

    def testRaisesBuzzWhenNumberIsMultipleOf5(self):
        self.assertEqual('Buzz', self.numbers[4])
        self.assertEqual('Buzz', self.numbers[49])
        self.assertEqual('Buzz', self.numbers[94])

    def testNumbersAreMultipleOf3And5(self):
        self.assertEqual('FizzBuzz', self.numbers[14])
        self.assertEqual('FizzBuzz', self.numbers[29])

    def testRaisesFizzIsNumberContains3(self):
        self.assertEqual('Fizz', self.numbers[31])

    def testRaisesBuzzIsNumberContains5(self):
        self.assertEqual('Buzz', self.numbers[57])

    def testRaisesFizzBuzzIsNumberContains3And5(self):
        self.assertEqual('FizzBuzz', self.numbers[34])
        self.assertEqual('FizzBuzz', self.numbers[52])

if __name__ == '__main__':
    unittest.main()
