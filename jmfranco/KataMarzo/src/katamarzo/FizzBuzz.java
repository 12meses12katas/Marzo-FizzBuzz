package katamarzo;

/**
 * @author jmfranco
 */
public class FizzBuzz {

    /**
     * Utility classes should not have a public constructor.
     */
    private FizzBuzz() {
        throw new Error();
    }

    /**
     * It returns <code>true</code> param <code>number</code> is multiple of 3
     * and <code>false</code> on the contrary.
     * @return boolean <code>(number % 3 == 0) ? true : false</code>
     */
    public static boolean isMultipleOfThree(final int number) {
        return (number % 3 == 0) ? true : false;
    }

    /**
     * It returns <code>true</code> param <code>number</code> is multiple of 5
     * and <code>false</code> on the contrary.
     * @return boolean <code>(number % 3 == 0) ? true : false</code>
     */
    public static boolean isMultipleOfFive(final int number) {
        return (number % 5 == 0) ? true : false;
    }

    /**
     * It returns <code>true</code> param <code>number</code> is multiple of
     * <code>factor</code> and <code>false</code> on the contrary.
     * @return boolean <code>(number % factor == 0) ? true : false</code>
     */
    public static boolean isMultipleOf(final int number, final int factor) {
        return (number % factor == 0) ? true : false;
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        for (int i = 1; i <= 100; i++) {
            if (isMultipleOfThree(i)) {
                System.out.print("Fizz");
            }
            if (isMultipleOfFive(i)) {
                System.out.print("Buzz");
            }
            if (!isMultipleOfThree(i) && !isMultipleOfFive(i)) {
                System.out.print(i);
            }
            System.out.println();
        }
    }
}
