'''
Created on 04/03/2011

@author: JE
'''
import unittest
from FizzBuzz import FizzBuzz



class Test(unittest.TestCase):


    def testFizz(self):
        fizzBuzz = FizzBuzz()
        self.assertEqual(fizzBuzz.say(3), "Fizz", "Fizzzzz")
        self.assertEqual(fizzBuzz.say(5), "Buzz", "Buzzzzz")
        self.assertEqual(fizzBuzz.say(9), "Fizz", "9 should be Fizz")
        self.assertEqual(fizzBuzz.say(10), "Buzz", "10 should be Buzz")
        self.assertEqual(fizzBuzz.say(1), "1", "1 should be 1")
        self.assertEqual(fizzBuzz.say(15),"FizzBuzz")
        self.assertEqual(fizzBuzz.say(13),"Fizz","Should be fizz")
        


if __name__ == "__main__":
    #import sys;sys.argv = ['', 'Test.testFizz']
    unittest.main()