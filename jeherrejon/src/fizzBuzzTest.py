'''
Created on 04/03/2011

@author: JE
'''
import unittest
from FizzBuzz import FizzBuzz



class Test(unittest.TestCase):


    def testFizz(self):
        fizzBuzz = FizzBuzz()
        self.assertEqual(fizzBuzz.fizzbuzz(3), "Fizz", "Fizzzzz")
        self.assertEqual(fizzBuzz.fizzbuzz(5), "Buzz", "Buzzzzz")
        self.assertEqual(fizzBuzz.fizzbuzz(9), "Fizz", "9 should be Fizz")
        self.assertEqual(fizzBuzz.fizzbuzz(10), "Buzz", "10 should be Buzz")
        self.assertEqual(fizzBuzz.fizzbuzz(1), "1", "1 should be 1")
        self.assertEqual(fizzBuzz.fizzbuzz(15),"FizzBuzz")
        


if __name__ == "__main__":
    #import sys;sys.argv = ['', 'Test.testFizz']
    unittest.main()