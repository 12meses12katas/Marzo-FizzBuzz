#include <stdio.h>
#include <stdlib.h>

int main(){
	int i;
	for(i=1; i<101; i++){
		if((i%3) && (i%5))
			printf("%d\n", i);
		else{
			if((i%3)==0)
				printf("Fizz");
			if((i%5)==0)
				printf("Buzz");
			printf("\n");
		}
	}
}
