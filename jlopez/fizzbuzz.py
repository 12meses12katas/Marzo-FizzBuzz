#!/usr/bin/python
import sys


def fizzbuzz(maximum):
    for number in range(1,maximum):
        result = ""
        if number % 3 == 0 or str(number).find("3") != -1:
            result = "Fizz"
        if number % 5 == 0 or str(number).find("5") != -1:
            result += "Buzz"
            if len(result) > 4:
                result +="?"
        if len(result) == 0:
            result = number
        print result

if __name__ == '__main__':
    if len(sys.argv) == 1:
        fizzbuzz(100)
    else:
        fizzbuzz(int(sys.argv[1]))
