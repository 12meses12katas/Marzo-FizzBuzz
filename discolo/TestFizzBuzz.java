package es.rromero.kata3;

import static org.junit.Assert.*;

import org.junit.Test;

/**
 * @author rromero
 *
 */
public class TestFizzBuzz {

	@Test
	public void testSayNumber() {
		FizzBuzz fb = new FizzBuzz();
		assertEquals("1",fb.sayFizzBuzz(1));
		assertEquals("2",fb.sayFizzBuzz(2));
		assertEquals("4",fb.sayFizzBuzz(4));
		assertEquals("41",fb.sayFizzBuzz(41));
	}
	
	@Test
	public void testSayFizz() {
		FizzBuzz fb = new FizzBuzz();
		assertEquals("Fizz",fb.sayFizzBuzz(3));
		assertEquals("Fizz",fb.sayFizzBuzz(9));
		assertEquals("Fizz",fb.sayFizzBuzz(93));
		assertEquals("Fizz",fb.sayFizzBuzz(31));
	}
	
	@Test
	public void testSayBuzz() {
		FizzBuzz fb = new FizzBuzz();
		assertEquals("Buzz",fb.sayFizzBuzz(5));
		assertEquals("Buzz",fb.sayFizzBuzz(10));
		assertEquals("Buzz",fb.sayFizzBuzz(59));
	}
	
	@Test
	public void testSayFizzBuzz() {
		FizzBuzz fb = new FizzBuzz();
		assertEquals("FizzBuzz",fb.sayFizzBuzz(35));
		assertEquals("FizzBuzz",fb.sayFizzBuzz(15));
		assertEquals("FizzBuzz",fb.sayFizzBuzz(55333555));
	}
}
