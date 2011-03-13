#!/usr/bin/python

import unittest
from fizz_buzz import FizzBuzz

class FizzBuzzTestCase(unittest.TestCase):

    def testCountUntil100(self):
        fb = FizzBuzz()
        self.assertEqual(100, len(fb.execute()))

if __name__ == '__main__':
    unittest.main()
