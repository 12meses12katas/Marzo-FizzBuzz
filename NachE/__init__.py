#!/usr/bin/env python
# by J.A. Nache <nache.nache@gmail.com>

for i in range(1,101):
	fizz = True if (i%3 == 0) or (str(i).count("3") > 0) else False
	buzz = True if (i%5 == 0) or (str(i).count("5") > 0) else False
	if fizz & buzz:
		print "FizzBuzz?"
	elif fizz | buzz:
		print "Fizz" if fizz  else "Buzz" #corregido, gracias a GermanDZ :)
	else:
		print i
		
