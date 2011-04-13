#include <stdio.h>

#define NUM_MAX 100

int divisible (int n, int div){
	return n%div;
}


int main(int argc, char *argv[]){

	int i;
	int div[2];
	for(i=1;i<=NUM_MAX;i++){
		div[0]=divisible(i,3);
		div[1]=divisible(i,5);
		if(!div[0]&&!div[1]) printf("%s\n","fizzbuzz");
		else if(!div[0])printf("%s\n","fizz");
		else if(!div[1])printf("%s\n","buzz");
		else printf("%i\n",i);
	}

}
