#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define NUM_MAX 100

int divisible (int n, int div){
	return n%div;
}

int numDigits(int n){
	int c = 1;
	  for (;n > 9; n /= 10) {
		  c++;
	  }
	return c;
}

int contiene (int n,char c){
	char cadena[numDigits(n)];
	sprintf(cadena,"%i",n);
	int i;
	for (i=0;i<strlen(cadena);i++){
		if (cadena[i]==c) return 1;
	}
	return 0;
}


int main(int argc, char *argv[]){

	int i;
	int div[2];
	for(i=1;i<=NUM_MAX;i++){
		div[0]=divisible(i,3);
		div[1]=divisible(i,5);
		if((!div[0]||contiene(i,'3'))&&(!div[1]||contiene(i,'5'))) printf("%s\n","fizzbuzz");
		else if(!div[0]||contiene(i,'3'))printf("%s\n","fizz");
		else if(!div[1]||contiene(i,'5'))printf("%s\n","buzz");
		else printf("%i\n",i);
	}

}
