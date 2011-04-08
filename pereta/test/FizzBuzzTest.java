
import org.junit.Before;
import org.junit.Test;
import static org.junit.Assert.*;


public class FizzBuzzTest {
	
	private FizzBuzz fizzBuzz;
	private Talker fizzTalker;
	private Talker buzzTalker;
	
	@Before
	public void setUp(){
		fizzBuzz = new FizzBuzz();
		fizzTalker = new Talker("Fizz", 3);
		buzzTalker =  new Talker("Buzz", 5);
		fizzBuzz.addTalker(fizzTalker);
		fizzBuzz.addTalker(buzzTalker);
	}
	
	@Test
	public void testFizzBuzzCaseNumber() throws Exception {
		String expected;
		
		expected = "1";
		assertEquals(expected, fizzBuzz.fizzBuzzer(1));
		
		expected = "2";
		assertEquals(expected, fizzBuzz.fizzBuzzer(2));
		
		expected = "4";
		assertEquals(expected, fizzBuzz.fizzBuzzer(4));
		
		expected = "7";
		assertEquals(expected, fizzBuzz.fizzBuzzer(7));
	}
	
	@Test
	public void testFizzBuzzCaseFizz() throws Exception {
		String expected = "Fizz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(3));
	}
	
	@Test
	public void testFizzBuzzCaseBuzz() throws Exception {
		String expected = "Buzz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(5));
	}
	
	@Test
	public void testFizzBuzzCaseFizzBuzz() throws Exception {
		String expected = "FizzBuzz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(15));
	}
	
	@Test
	public void testFizzBuzzCaseFizzContainsDivisor() throws Exception {
		String expected = "Fizz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(131111));
	}
	
	@Test
	public void testFizzBuzzCaseBuzzContainsDivisor() throws Exception {
		String expected = "Buzz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(1115111));
	}
	
	@Test
	public void testFizzBuzzCaseFizzBuzzContainsDivisor() throws Exception {
		String expected = "FizzBuzz";
		
		assertEquals(expected, fizzBuzz.fizzBuzzer(11135111));
	}
}
