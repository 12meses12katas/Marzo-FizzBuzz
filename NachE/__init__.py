#!/usr/bin/env python
# by J.A. Nache <nache.nache@gmail.com>

for i in range(1,101):
	if (i%3 == 0 or i%5 == 0) and (i%3 != i%5):
		print "Fizz" if i%3 == 0 else "Buzz"
	else:
		print "FizzBuzz?" if i%3 == 0 and i%5 == 0 else i
