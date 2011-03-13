#!/usr/bin/python

class FizzBuzz():

    def execute(self):
        numbers = range(1,101)
        for index in range(len(numbers)):
            if ((numbers[index] % 3 == 0) and 
                (numbers[index] % 5 == 0)):
                numbers[index] = "FizzBuzz"

            elif (self.__hasOrIsMultipleOf(numbers[index], 3)):
                numbers[index] = "Fizz"

            elif (self.__hasOrIsMultipleOf(numbers[index], 5)):
                numbers[index] = "Buzz"

        return numbers

    def __hasOrIsMultipleOf(self, number, divisor):
        if ((number % divisor == 0) or 
            (str(number).__contains__(str(divisor)))):
                return True
        else:
            return False
