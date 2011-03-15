
import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class TestFizzBuzz {
	private FizzBuzzAnswer fizzBuzz;

	@Before
	public void setUp() throws Exception {
		fizzBuzz = new FizzBuzzAnswer();
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testAnswerTo1Is1() {
		assertTrue(fizzBuzz.getAnswerTo(1).equals("1"));
	}

	@Test
	public void testAnswerFizzToThreeNumber() {
		assertTrue(fizzBuzz.getAnswerTo(FizzBuzzNumbers.FIZZ.getNumber()).equals(FizzBuzzNumbers.FIZZ.getAnswer()));
	}

	@Test
	public void testAnswerBuzzToFiveNumber() {
		assertTrue(fizzBuzz.getAnswerTo(FizzBuzzNumbers.BUZZ.getNumber()).equals(FizzBuzzNumbers.BUZZ.getAnswer()));
	}

	@Test
	public void testAnswerFizzToNumberWithAThree() {
		assertTrue(fizzBuzz.getAnswerTo(new Integer(43)).equals(FizzBuzzNumbers.FIZZ.getAnswer()));
	}

	@Test
	public void testAnswerBuzzToNumberWithAFive() {
		assertTrue(fizzBuzz.getAnswerTo(new Integer(55)).equals(FizzBuzzNumbers.BUZZ.getAnswer()));
	}

	@Test
	public void testAnswerEmptyStringToNull() {
		assertEquals(fizzBuzz.getAnswerTo(null).length(),"".length());
	}

	@Test
	public void testAnswerFizzBuzzToNumberDividedByThreeAndFive() {
		assertTrue(fizzBuzz.getAnswerTo(new Integer(45)).equals(FizzBuzzNumbers.FIZZ.getAnswer()+FizzBuzzNumbers.BUZZ.getAnswer()));
	}

	@Test
	public void testAnswerFizzBuzzToNumberWithThreeAndFive() {
		assertTrue(fizzBuzz.getAnswerTo(new Integer(35)).equals(FizzBuzzNumbers.FIZZ.getAnswer()+FizzBuzzNumbers.BUZZ.getAnswer()));
	}
}
