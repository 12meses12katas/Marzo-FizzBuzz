import unittest
from fizzbuzz import FizzBuzzNumber

class TestFizzBuzz(unittest.TestCase):
    def setUp(self):
        self.fizzBuzzNumber = FizzBuzzNumber()
    def testUno(self):
        self.assertEqual(self.fizzBuzzNumber.say(1),1)
    def testDos(self):
        self.assertEqual(self.fizzBuzzNumber.say(2),2)
    def testTres(self):
        self.assertEqual(self.fizzBuzzNumber.say(3),"Fizz")
    def testMultiplosTresMenorQuince(self):
        for number in range(3,12,3):
            self.assertEqual(self.fizzBuzzNumber.say(number),"Fizz")
    def testCinco(self):
        self.assertEqual(self.fizzBuzzNumber.say(5),"Buzz")
    def testMultiplosCincoMenorQuince(self):
        for number in [5,10]:
            self.assertEqual(self.fizzBuzzNumber.say(number),"Buzz")
    def testQuince(self):
        self.assertEqual(self.fizzBuzzNumber.say(15),"FizzBuzz")
    def testMultiplosQuince(self):
        for number in range(15,100,15):
            self.assertEqual(self.fizzBuzzNumber.say(number),"Fizz")