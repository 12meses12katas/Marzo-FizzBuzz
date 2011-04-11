package com.japaz.katas.mfb;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class TestNumberFizzBuzzGenerator {
	NumberGenerator numberGenerator;
	
	@Before
	public void setUp() {
		numberGenerator = new NumberGenerator();
		numberGenerator.addNumberPrinter(new FizzNumberType());
		numberGenerator.addNumberPrinter(new BuzzNumberPrinter());
		
		OtherNumberType numberPrinter = new OtherNumberType();
		numberPrinter.addNumberPrinter(new FizzNumberType());
		numberPrinter.addNumberPrinter(new BuzzNumberPrinter());
		
		numberGenerator.addNumberPrinter(numberPrinter);
	}
	
	@Test
	public void testPrintNonFizzBuzzNumber() {
		String number = numberGenerator.printNumber(1);
		assertEquals("1", number);
	}

	@Test
	public void testPrintFizzNumber() {
		String number = numberGenerator.printNumber(3);
		assertEquals("Fizz", number);
	}
	
	@Test
	public void testPrintBuzzNumber() {
		String number = numberGenerator.printNumber(5);
		assertEquals("Buzz", number);
	}
	
	@Test
	public void testPrintFizzBuzzNumber() {
		String number = numberGenerator.printNumber(15);
		assertEquals("FizzBuzz", number);
	}
	
	@Test
	public void testPrintFizzNumberStage2() {
		String number = numberGenerator.printNumber(37);
		assertEquals("Fizz", number);
	}
	
	@Test
	public void testPrintBuzzNumberStage2() {
		String number = numberGenerator.printNumber(52);
		assertEquals("Buzz", number);
	}

	@Test
	public void testPrintFizzBuzzNumberStage2() {
		String number = numberGenerator.printNumber(351233);
		assertEquals("FizzBuzz", number);
	}
	
	
}
