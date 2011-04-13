#!/bin/bash
# Kata
# By aesptux
# http://mortuux.wordpress.com

for i in {1..100}
do
	mod3=`expr $i % 3`
	mod5=`expr $i % 5`
	if [ "$mod5" = "0" -a "$mod3" = "0" ]
	then
		echo "FizzBuzz"
	elif [ "$mod5" = "0" ]
	then
		echo "Buzz"
	elif [ "$mod3" = "0" ]
	then
		echo "Fizz"
	else
		echo "$i"
	fi
done
