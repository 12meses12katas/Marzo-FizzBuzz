package katamarzo;

import java.util.Random;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author jmfranco
 */
public class FizzBuzzTest {

    /**
     * Test of method <code>isMultipleOfThree</code>, of class FizzBuzz.
     */
    @Test
    public void testIsMultipleOfThree() {
        assertTrue(FizzBuzz.isMultipleOfThree(0));
        assertTrue(FizzBuzz.isMultipleOfThree(3));
        assertTrue(FizzBuzz.isMultipleOfThree(9));
        assertTrue(FizzBuzz.isMultipleOfThree(-3));

        // TIP: Todo número multiplicado por 3 es múltiplo de 3 (trivial :P)
        Random generator = new Random();
        int number;
        for (int i = 0; i <= 1000; i++) {
            number = 3 * generator.nextInt(Integer.MAX_VALUE / 3);
            assertTrue(FizzBuzz.isMultipleOfThree(number));
        }

        assertFalse(FizzBuzz.isMultipleOfThree(1));
        assertFalse(FizzBuzz.isMultipleOfThree(11));
        assertFalse(FizzBuzz.isMultipleOfThree(13));
        assertFalse(FizzBuzz.isMultipleOfThree(100));
    }

    /**
     * Test of method <code>isMultipleOfThree</code>, of class FizzBuzz.
     */
    @Test
    public void testIsMultipleOfFive() {
        assertTrue(FizzBuzz.isMultipleOfFive(0));
        assertTrue(FizzBuzz.isMultipleOfFive(5));
        assertTrue(FizzBuzz.isMultipleOfFive(25));
        assertTrue(FizzBuzz.isMultipleOfFive(100));
        assertTrue(FizzBuzz.isMultipleOfFive(-5));

        // TIP: Todo número multiplicado por 5 es múltiplo de 5 (trivial :P)
        Random generator = new Random();
        int number;
        for (int i = 0; i <= 1000; i++) {
            number = 5 * generator.nextInt(Integer.MAX_VALUE / 5);
            assertTrue(FizzBuzz.isMultipleOfFive(number));
        }

        assertFalse(FizzBuzz.isMultipleOfFive(1));
        assertFalse(FizzBuzz.isMultipleOfFive(11));
        assertFalse(FizzBuzz.isMultipleOfFive(13));
        assertFalse(FizzBuzz.isMultipleOfFive(99));
    }

    /**
     * Test of method <code>isMultipleOfThree</code>, of class FizzBuzz.
     * NOTA: Solo se testea para factores que son enteros positivos.
     */
    @Test
    public void testIsMultipleOf() {
        Random generator = new Random();
        int number, factor;
        for (int i = 0; i <= 1000; i++) {
            factor = generator.nextInt(Integer.MAX_VALUE);
            for (int j = 0; j <= 1000; j++) {
                // Probamos la división por un entero positivo
                number = factor * generator.nextInt(Integer.MAX_VALUE / factor);
                assertTrue(FizzBuzz.isMultipleOf(number, factor));
                // Probamos la división por un entero negativo
                // TIP: No se usa Math.abs(Integer.MIN_VALUE) porque devuelve un número negativo (-2^31)
                // TIP: nextInt(n) devuelve un entero entre 0 y n (siemprrrre positifvo).
                number = factor * generator.nextInt(Integer.MAX_VALUE / factor);
                assertTrue(FizzBuzz.isMultipleOf(-1 * number, factor));
            }
            assertTrue(FizzBuzz.isMultipleOf(0, factor));
        }
    }
}
