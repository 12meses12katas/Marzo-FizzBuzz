for i in range(1,101):
	output = ''
	#Fizz
	if i % 3 == 0 or '3' in str(i):
		output = 'Fizz'
	#Buzz
	if i % 5 == 0 or '5' in str(i):
		output = output + 'Buzz'
	#if empty at this moment it didn't entered in any if, print i
	if output == '':
		print i
	else:
		print output