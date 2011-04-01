BEGIN {
   printf "Press ENTER to start\n"
   printf "Press CTRL + D to stop\n"
}
{
   i=0
   while ( ++i <= 100 ) {

	x=0
 
	if (i%3 == 0 || i ~ 3 ) { 
		printf "Fizz"; x=1
	} 

	if (i%5 == 0 || i ~ 5) {
		printf "Buzz"; x=1
	} 

	if (x == 0) {
		printf i
	}
 
	print ""
   }
}
