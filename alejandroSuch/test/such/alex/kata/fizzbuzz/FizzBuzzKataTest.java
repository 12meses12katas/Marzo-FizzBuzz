package such.alex.kata.fizzbuzz;

import static org.junit.Assert.*;

import org.junit.Test;

public class FizzBuzzKataTest {

	@Test
	public void testFizzBuzz() {
		FizzBuzzKata fb = new FizzBuzzKata();
		assertEquals("1", fb.fizzBuzz(1));
		assertEquals("Fizz", fb.fizzBuzz(3));
		assertEquals("Buzz", fb.fizzBuzz(5));
		assertEquals("FizzBuzz?", fb.fizzBuzz(15));
		assertEquals("13", fb.fizzBuzz(13));
		assertEquals("Buzz", fb.fizzBuzz(35));
		assertEquals("53", fb.fizzBuzz(53));
		assertEquals("Fizz", fb.fizzBuzz(54));
		assertEquals("58", fb.fizzBuzz(58));
	}

	@Test
	public void testFizzBuzzStage2() {
		FizzBuzzKata fb = new FizzBuzzKata();
		assertEquals("1", fb.fizzBuzzStage2(1));
		assertEquals("Fizz", fb.fizzBuzzStage2(3));
		assertEquals("Buzz", fb.fizzBuzzStage2(5));
		assertEquals("FizzBuzz?", fb.fizzBuzzStage2(15));
		assertEquals("Fizz", fb.fizzBuzzStage2(13));
		assertEquals("FizzBuzz?", fb.fizzBuzzStage2(35));
		assertEquals("FizzBuzz?", fb.fizzBuzzStage2(53));
		assertEquals("FizzBuzz?", fb.fizzBuzzStage2(54));
		assertEquals("Buzz", fb.fizzBuzzStage2(58));
	}

}
