package net.corbacho.MarzoFizzBuzz;

import static org.junit.Assert.*;
import org.junit.Before;
import org.junit.Test;


public class FizzBuzzCounterTest {
	FizzBuzzCounter counter = null;
	
	/*
	 * Will perform the method() before each test. 
	 * This method can prepare the test environment, 
	 * e.g. read input data, initialize the class)
	 */
	@Before
	public void setUp() throws Exception {
		counter = new FizzBuzzCounter();
	}

	@Test
	public void testThreeFiveMultiples(){
		for(int i=1; i<=100; i++) {
			String result = counter.tick();
			if ((i % 3 == 0) && (i%5==0)) {
				assertEquals("FizzBuzz", result);
			} else {
				assertFalse(result.equals("FizzBuzz"));
			}
		}
	}
	
	@Test
	public void testThreeMultiples(){
		for(int i=1; i<=100; i++) {
			String result = counter.tick();
			if ((i%3==0) && (i%5!=0)) {
				assertEquals("Fizz", result);
			} else {
				assertFalse(result.equals("Fizz"));
			}
		}
	}
	
	@Test
	public void testFiveMultiples(){
		for(int i=1; i<=100; i++) {
			String result = counter.tick();
			if (i % 5 == 0 && (i%3!=0)) {
				assertEquals("Buzz", result);
			} else {
				assertFalse(result.equals("Buzz"));
			}
		}
	}
	
	@Test
	public void testGeneric() {
		assertEquals("1", counter.tick());
		assertEquals("2", counter.tick());
		assertEquals("Fizz", counter.tick());
		assertEquals("4", counter.tick());
		assertEquals("Buzz", counter.tick());
		assertEquals("Fizz", counter.tick());
		assertEquals("7", counter.tick());
		assertEquals("8", counter.tick());
		assertEquals("Fizz", counter.tick());
		assertEquals("Buzz", counter.tick());
		assertEquals("11", counter.tick());
		assertEquals("Fizz", counter.tick());
		assertEquals("13", counter.tick());
		assertEquals("14", counter.tick());
		assertEquals("FizzBuzz", counter.tick());
		assertEquals("16", counter.tick());
		assertEquals("17", counter.tick());
		assertEquals("Fizz", counter.tick());
		assertEquals("19", counter.tick());
		assertEquals("Buzz", counter.tick());
		
	}
	
	@Test
	public void testIsFizz() {
		assertTrue(counter.isFizz(3));
		assertTrue(counter.isFizz(9));	
		assertTrue(counter.isFizz(13));
		assertTrue(counter.isFizz(34));
		assertTrue(counter.isFizz(93));
		
		assertFalse(counter.isFizz(4));
		assertFalse(counter.isFizz(5));	
		assertFalse(counter.isFizz(1));		
	}
	
	@Test
	public void testIsBuzz(){
		assertTrue(counter.isBuzz(5));
		assertTrue(counter.isBuzz(15));	
		assertTrue(counter.isBuzz(152));
		assertTrue(counter.isBuzz(100));
		assertTrue(counter.isBuzz(51));
		
		assertFalse(counter.isBuzz(4));
		assertFalse(counter.isBuzz(99));	
		assertFalse(counter.isBuzz(1));
	}	
	
}
