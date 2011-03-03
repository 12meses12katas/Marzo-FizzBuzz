package katamarzo;

/**
 * @author jmfranco
 */
public class FizzBuzz2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        for (int i = 35; i <= 100; i++) {
            if (i % 3 == 0 || Integer.toString(i).indexOf("3") >= 0) {
                System.out.print("Fizz");
            }
            if (i % 5 == 0 || Integer.toString(i).indexOf("5") >= 0) {
                System.out.print("Buzz");
            }
            if (i % 3 != 0 && i % 5 != 0 && Integer.toString(i).indexOf("3") < 0 && Integer.toString(i).indexOf("5") < 0) {
                System.out.print(i);
            }
            System.out.println();
        }
    }
}
