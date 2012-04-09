package com.kata.marzo;

import static org.junit.Assert.*;

import org.junit.Test;

import com.kata.marzo.FizzBuzz;

public class FizzBuzzTest {

	private String print() {
		FizzBuzz fizzBuzz = new FizzBuzz();
		return fizzBuzz.print();
	}

	@Test
	public void testFizzBuzzOn15FirstNumbers() {
		
		assertEquals("1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz", print().substring(0,57));
	}
}
