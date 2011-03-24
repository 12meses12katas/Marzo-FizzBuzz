#!/usr/bin/python


def contiene(numero, char):
	return True if (str(numero).find(char)) != -1 else False

def divisible(numero, div):
	return True if (numero % div == 0) else False

for i in range(1,101):
	fizz = True if contiene(i, "3") or divisible(i, 3) else False
	buzz = True if contiene(i, "5") or divisible(i, 5) else False	

	if fizz and buzz:
		print "FizzBuzz"
	elif fizz or buzz:
		print "Fizz" if fizz else "Buzz"
	else:
		print i



