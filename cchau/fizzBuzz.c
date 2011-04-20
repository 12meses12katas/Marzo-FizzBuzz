#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *itoa(int num, char buffer[]);
int contiene(int num, int numero);

int main(void) {
	int i;

	for(i = 1; i <= 100; i++) {
		if((i % 3 == 0 || contiene(i, 3) == 1)  && (i % 5 == 0 || contiene(i, 5) == 1)) {
			printf("FizzBuzz\n");
		} else if((i % 3 == 0 || contiene(i, 3) == 1) && (i % 5 != 0)) {
			printf("Fizz\n");
		} else if((i % 3 != 0) && (i % 5 == 0 || contiene(i, 5) == 1)) {
			printf("Buzz\n");
		} else {
			printf("%d\n", i);
		}
	}
	
	return 0;
}

char *itoa(int num, char buffer[]) {
	sprintf(buffer, "%d", num);

	return buffer;
}

// chequea si un string contiene o no un num
// si lo contiene devuelve 1 sino devuelve -1
int contiene(int num, int numero) {
	char buffer[4];
	itoa(num, buffer);
	int result =-1;
	int i;
	for(i = 0; i < strlen(buffer); i++) {
		if((buffer[i] - '0') == numero) {
			result = 1;
			break;
		}
	}
	return result;
}
