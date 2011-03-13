#!/usr/bin/python

class FizzBuzz():

    def execute(self):
        numbers = range(1,101)
        for index in range(len(numbers)):
            if ((numbers[index] % 3 == 0) and 
                (numbers[index] % 5 == 0)):
                    numbers[index] = "FizzBuzz"

            elif (self.__hasOrIsMultipleOf3(numbers[index])):
                numbers[index] = "Fizz"

            elif (numbers[index] % 5 == 0):
                numbers[index] = "Buzz"

        return numbers

    def __hasOrIsMultipleOf3(self, number):
        if ((number % 3 == 0) or 
            (str(number).__contains__('3'))):
                return True
        else:
            return False
