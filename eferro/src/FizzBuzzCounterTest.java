
import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThat;
import org.junit.Before;
import org.junit.Test;


public class FizzBuzzCounterTest {
	FizzBuzzCounter counter = null;
	
	@Before
	public void setUp() throws Exception {
		counter = new FizzBuzzCounter();
	}

	//@Test
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
	public void testCountUpTo100() {
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
}
