package com.jos.katas.fizzbuzz;

import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import org.junit.Before;
import org.junit.Test;


public class FizzBuzzTest {
	
	private FizzBuzz fb;
	
	@Before
	public void setUp() throws Exception {
		fb = new FizzBuzz();
	}
	
	@Test
	public void itShouldSayFizz(){

		assertEquals("1", fb.say(1));
		assertEquals("2", fb.say(2));
		assertEquals("fizz", fb.say(3));
		assertEquals("fizz", fb.say(9));
		assertEquals("fizz", fb.say(13));
		assertThat("fizz", not(equalTo(fb.say(20))));
		assertEquals("fizz", fb.say(21));
		assertEquals("fizz", fb.say(99));
	}
	
	@Test
	public void itShouldSayBuzz(){
		assertEquals("buzz", fb.say(5));
		assertEquals("buzz", fb.say(20));
		assertEquals("buzz", fb.say(25));
		assertThat("buzz", not(equalTo(fb.say(21))));
		assertEquals("buzz", fb.say(55));
		assertEquals("buzz", fb.say(58));
		assertEquals("buzz", fb.say(95));
	}
	
	@Test
	public void itShouldSayFizzBuzz(){
		assertEquals("fizzbuzz", fb.say(15));
	}
	
	@Test
	public void itShouldReturnAInvalidArgumentException(){
		try {
			fb.say(-1);
			fail("IllegalArgumentException expected");
		}
		catch (IllegalArgumentException iae){
			//ignore
		}
		
		try {
			fb.say(101);
			fail("IllegalArgumentException expected");
		}
		catch (IllegalArgumentException iae){
			//ignore
		}
	}
}
