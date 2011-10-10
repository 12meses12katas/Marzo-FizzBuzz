package es.aarmenta.katas.fizzbuzz;

import static org.junit.Assert.assertEquals;

import org.junit.Test;

/**
 * 
 * @author angelarmentamartinez
 * 
 */
public class FizzBuzzTest {

	// -------------------------------------------------------- Metodos publicos

	@Test
	public void testNumber() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		
		assertEquals("1", myFizzBuzz.process(1));
		assertEquals("2", myFizzBuzz.process(2));
		assertEquals("7", myFizzBuzz.process(7));
		assertEquals("11", myFizzBuzz.process(11));
		assertEquals("13", myFizzBuzz.process(13));
	}

	@Test
	public void testFizz() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		
		assertEquals("Fizz", myFizzBuzz.process(3));
		assertEquals("Fizz", myFizzBuzz.process(6));
		assertEquals("Fizz", myFizzBuzz.process(9));
	}

	@Test
	public void testBuzz() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		
		assertEquals("Buzz", myFizzBuzz.process(5));
		assertEquals("Buzz", myFizzBuzz.process(10));
		assertEquals("Buzz", myFizzBuzz.process(20));
	}

	@Test
	public void testFizzBuzz() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		
		assertEquals("FizzBuzz", myFizzBuzz.process(15));
		assertEquals("FizzBuzz", myFizzBuzz.process(30));
		assertEquals("FizzBuzz", myFizzBuzz.process(45));
	}

	@Test
	public void testNumberExtended() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		myFizzBuzz.setVersion(FizzBuzz.EXTENDED_VERSION);
		
		assertEquals("1", myFizzBuzz.process(1));
		assertEquals("2", myFizzBuzz.process(2));
		assertEquals("7", myFizzBuzz.process(7));
		assertEquals("11", myFizzBuzz.process(11));
	}
	
	@Test
	public void testFizzExtended() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		myFizzBuzz.setVersion(FizzBuzz.EXTENDED_VERSION);
		
		assertEquals("Fizz", myFizzBuzz.process(13));
		assertEquals("Fizz", myFizzBuzz.process(23));
		assertEquals("Fizz", myFizzBuzz.process(31));
	}

	@Test
	public void testBuzzExtended() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		myFizzBuzz.setVersion(FizzBuzz.EXTENDED_VERSION);
		
		assertEquals("Buzz", myFizzBuzz.process(52));
		assertEquals("Buzz", myFizzBuzz.process(58));
		assertEquals("Buzz", myFizzBuzz.process(59));
	}

	@Test
	public void testFizzBuzzExtended() {
		FizzBuzz myFizzBuzz = new FizzBuzz();
		myFizzBuzz.setVersion(FizzBuzz.EXTENDED_VERSION);
		
		assertEquals("FizzBuzz", myFizzBuzz.process(53));
		assertEquals("FizzBuzz", myFizzBuzz.process(35));
	}

}
