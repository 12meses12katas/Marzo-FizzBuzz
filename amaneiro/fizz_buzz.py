#!/usr/bin/python

class FizzBuzz():

    def execute(self):
        numbers = range(1,101)
        for index in range(len(numbers)):
            if (numbers[index] % 3 == 0):
                numbers[index] = "Fizz"

            if (numbers[index] != "Fizz" and numbers[index] % 5 == 0):
                numbers[index] = "Buzz"

        return numbers
