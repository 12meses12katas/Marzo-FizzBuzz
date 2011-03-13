#!/usr/bin/python

import unittest
from fizz_buzz import FizzBuzz

class FizzBuzzTestCase(unittest.TestCase):

    def setUp(self):
        self.fb = FizzBuzz()

    def testCountUntil100(self):
        self.assertEqual(100, len(self.fb.execute()))

    def testRaisesFizzWhenNumberIsMultipleOf3(self):
        numbers = self.fb.execute()
        self.assertEqual('Fizz', numbers[2])
        self.assertEqual('Fizz', numbers[29])
        self.assertEqual('Fizz', numbers[98])

    def testRaisesBuzzWhenNumberIsMultipleOf5(self):
        numbers = self.fb.execute()
        self.assertEqual('Buzz', numbers[4])
        self.assertEqual('Buzz', numbers[49])
        self.assertEqual('Buzz', numbers[94])

if __name__ == '__main__':
    unittest.main()
