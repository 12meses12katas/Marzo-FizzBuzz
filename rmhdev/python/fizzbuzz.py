"""
Kata trying to resolve the FizzBuzz problem using TDD.
Link: http://github.com/12meses12katas/Marzo-FizzBuzz
Note: i'm a python newbie
"""

__author__ = "Rober Martin H (@rmhdev)"
__version__ = "0.1"
__date__ = "2011/03/12"
__copyright__ = "Copyright (c) 2011 Rober Martin H"
__license__ = "MIT License"

fizz = "Fizz"
buzz = "Buzz"
fizzbuzz = "FizzBuzz"
separator = " "

def toFizzBuzzNormal(n):
    return separator.join(map(getFizzBuzzNormal, range(1, n + 1)))

def getFizzBuzzNormal(n):
    result = str(n)
    if isFizzNormal(n) and isBuzzNormal(n):
        result = fizzbuzz
    elif isFizzNormal(n):
        result = fizz
    elif isBuzzNormal(n):
        result = buzz
    return result

def isFizzNormal(n):
    return isFizzOrBuzzNormal(n, 3)

def isBuzzNormal(n):
    return isFizzOrBuzzNormal(n, 5)

def isFizzOrBuzzNormal(n, value):
    return ((n % value) == 0)



def toFizzBuzzSpecial(n):
    return separator.join(map(getFizzBuzzSpecial, range(1, n + 1)))

def getFizzBuzzSpecial(n):
    result = ""
    if isFizzSpecial(n):
        result = fizz
    if isBuzzSpecial(n):
        result = result + buzz
    if result == "":
        result = str(n)
    return result

def isFizzSpecial(n):
    return isFizzOrBuzzSpecial(n, 3)

def isBuzzSpecial(n):
    return isFizzOrBuzzSpecial(n, 5)

def isFizzOrBuzzSpecial(n, value):
    return ((n % value) == 0) or str(n).find(str(value)) >= 0
