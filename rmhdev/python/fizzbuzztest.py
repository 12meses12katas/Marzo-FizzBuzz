"""
Unit test for fizzbuzz.py
Link: http://github.com/12meses12katas/Marzo-FizzBuzz
Note: i'm a python newbie
"""

__author__      = "Rober Martin H (@rmhdev)"
__version__     = "0.1"
__date__        = "2011/03/12"
__copyright__   = "Copyright (c) 2011 Rober Martin H"
__license__     = "MIT License"

import fizzbuzz
import unittest

fz = fizzbuzz.fizz
bz = fizzbuzz.buzz
fb = fizzbuzz.fizzbuzz
separator = fizzbuzz.separator

class TestKnownValues(unittest.TestCase):
    knownValues = ((1,  ("1")),
                   (2,  ("1", "2")),
                   (3,  ("1", "2", fz)),
                   (4,  ("1", "2", fz, "4")),
                   (5,  ("1", "2", fz, "4", bz)),
                   (6,  ("1", "2", fz, "4", bz, fz)),
                   (15, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, "13", "14", fb)),
                   (30, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, "13", "14", fb, "16", "17", fz, "19", bz, fz, "22", "23", fz, bz, "26", fz, "28", "29", fb))
                   )

    def testToFizzBuzzNormal(self):
		"""toFizzBuzzNormal should give known result with known input"""
		for integer, expected in self.knownValues:
			result = fizzbuzz.toFizzBuzzNormal(integer)
			self.assertEqual(separator.join(map(str, expected)), result)


    knownValues2 = ((1, ("1")),
                   (2,  ("1", "2")),
                   (3,  ("1", "2", fz)),
                   (4,  ("1", "2", fz, "4")),
                   (5,  ("1", "2", fz, "4", bz)),
                   (6,  ("1", "2", fz, "4", bz, fz)),
                   (15, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, fz, "14", fb)),
                   (30, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, fz, "14", fb, "16", "17", fz, "19", bz, fz, "22", fz, fz, bz, "26", fz, "28", "29", fb)),
                   (33, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, fz, "14", fb, "16", "17", fz, "19", bz, fz, "22", fz, fz, bz, "26", fz, "28", "29", fb, fz, fz, fz)),
                   (35, ("1", "2", fz, "4", bz, fz, "7", "8", fz, bz, "11", fz, fz, "14", fb, "16", "17", fz, "19", bz, fz, "22", fz, fz, bz, "26", fz, "28", "29", fb, fz, fz, fz, fz, fb))
                   )

    def testToFizzBuzzSpecial(self):
		"""toFizzBuzzSpecial should give known result with known input"""
		for integer, expected in self.knownValues2:
			result = fizzbuzz.toFizzBuzzSpecial(integer)
			self.assertEqual(separator.join(map(str, expected)), result)

if __name__ == "__main__":
	unittest.main()
