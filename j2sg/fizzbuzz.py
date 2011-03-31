#!/usr/bin/env python

# 12 Meses 12 Katas - Marzo FizzBuzz
# By j2sg - jjslzgc@gmail.com

for n in range(1,101):
	print '%s%s%s'%((['','Fizz'][n%3==0]),(['','Buzz'][n%5==0]),(['',str(n)][n%3!=0 and n%5!=0]))

