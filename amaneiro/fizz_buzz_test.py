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

if __name__ == '__main__':
    unittest.main()
