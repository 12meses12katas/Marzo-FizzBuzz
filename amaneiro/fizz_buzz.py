#!/usr/bin/python

class FizzBuzz():

    def execute(self):
        numbers = range(1,101)
        for index in range(len(numbers)):
            if (numbers[index] % 3 == 0):
                numbers[index] = "Fizz"
        return numbers
