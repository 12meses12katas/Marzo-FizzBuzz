// Kata 2: FizzBuzz
// aabilio - aabilio@gmail.com
// Lenguaje: C

#include <stdio.h>
#include <string.h>

#define MAX 100
#define TRUE 1
#define FALSE 0

//Cuenta el número de digitos que tiene un número
//para saber no declarar más mem. de la necesaria en contieneEl().
int cuantosDigitos(int num)
{
    int dgts = 0;
    while (num>0)
    {
        dgts++;
        num /= 10;
    }
    return dgts;
}

//Mira si cotiene el digito car en el número num,
//para ello se pasa el número a char * y se comprueba con un buble.
int contieneEl(char car, int num)
{
    int i=0;
    char numEnChar[cuantosDigitos(num)];
    
    sprintf(numEnChar, "%d", num);
    for (i=0; i<strlen(numEnChar); i++)
        if (numEnChar[i] == car) return TRUE;
    
    return FALSE;
}


int main()
{
    int i;

    for (i=1; i<=MAX; i++)
    {
        //Divisible entre 3 y 5, contiene 3 y es divisible entre 5
        //contiene 5 y es divisible entre 5, contiene 5 y contiene 3:
        if ((((i%3) == 0) && ((i%5) == 0)) || 
           (contieneEl('3', i) && ((i%5) == 0)) || 
           (contieneEl('5', i) && ((i%3) == 0)) || 
           (contieneEl('5', i) && contieneEl('3', i)))
            printf("FizzBuzz\n");
        //Divisible entre 3 o contiene 3:
        else if (((i%3) == 0) || contieneEl('3', i))
            printf("Fizz\n");
        //Divisible entre 5 o contiene 5:
        else if (((i%5) == 0) || contieneEl('5', i))
            printf("Buzz\n");
        //Resto de casos imprime el número:
        else
            printf("%d\n", i);
    }
    
    return 0;
}
