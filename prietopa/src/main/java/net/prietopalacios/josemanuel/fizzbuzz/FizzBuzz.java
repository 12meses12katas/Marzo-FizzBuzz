/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package net.prietopalacios.josemanuel.fizzbuzz;

/**
 *
 * @author jprieto
 */
public class FizzBuzz {

    private static final String FIZZ = "Fizz";
    private static final String BUZZ = "Buzz";

    public static void play() {
        for (int i = 1; i <= 100; i++) {
            String salida = new String();
            if (esDivisiblePor(i, 3) || contieneNumero(i, 3)) {
                salida += FIZZ;
            }

            if (esDivisiblePor(i, 5) || contieneNumero(i, 5)) {
                salida += BUZZ;
            }

            if (salida.length() == 0) {
                salida = String.valueOf(i);
            }

            System.out.println(salida);
        }
    }
    
    private static boolean contieneNumero(int i, int numero){
        String auxnumero = String.valueOf(numero);
        String auxi = String.valueOf(i);
        String regex = "[0-9]"+auxnumero+"|"+auxnumero+"[0-9]";
        return auxi.matches(regex);
    }

    private static boolean esDivisiblePor(int i, int numero) {
        return (i / numero) > 0 && (i % numero) == 0;
    }

    public static void main(String[] args) {
        FizzBuzz.play();
    }
}
