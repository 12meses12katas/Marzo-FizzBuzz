#!/usr/bin/python

class FizzBuzz():

    def execute(self):
        numbers = range(1,101)
        for index in range(len(numbers)):
            if (self.__hasOrIsMultipleOfBoth(numbers[index], 3, 5)):
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

    def __hasOrIsMultipleOfBoth(self, number, div1, div2):
        if (self.__hasOrIsMultipleOf(number, div1) and
            self.__hasOrIsMultipleOf(number, div2)):
                return True
        else:
            return False
