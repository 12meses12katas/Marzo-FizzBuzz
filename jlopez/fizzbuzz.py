#!/usr/bin/python
import sys


def fizzbuzz(maximum):
    for number in range(1,maximum):
        if number % 3 != 0 and number % 5 != 0:
            print(number)
        else:
            if number % 3 == 0:
                sys.stdout.write("Fizz")
            if number % 5 == 0:
                sys.stdout.write("Buzz")
            sys.stdout.write("\n")

if __name__ == '__main__':
    if len(sys.argv) == 1:
        fizzbuzz(100)
    else:
        fizzbuzz(int(sys.argv[1]))
        
