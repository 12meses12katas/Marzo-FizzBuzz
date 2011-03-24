#!/usr/bin/python


def contiene(numero, char):
	if (str(numero).find(char)) != -1:
		return True
	else:
		return False

def divisible(numero, div):
	if (numero % div == 0):
		return True
	else:
		return False


for i in range(1,101):
	fizz = True if contiene(i, "3") or divisible(i, 3) else False
	buzz = True if contiene(i, "5") or divisible(i, 5) else False	

	if fizz and buzz:
		print "FizzBuzz"
	elif fizz or buzz:
		print "Fizz" if fizz else "Buzz"
	else:
		print i



