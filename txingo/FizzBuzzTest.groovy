import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test 


class FizzBuzzTest {
    
    private FizzBuzz app
    
    @Before
    public void setUp() throws Exception {
        app = new FizzBuzz()
    }
    
    @After
    public void tearDown() throws Exception {
    }
    
    @Test
    public void test1(){
        assertEquals("1", app.compute(1))
    }
    
    @Test
    public void test2(){
        assertEquals("2", app.compute(2))
    }
    
    @Test
    public void test3(){
        assertEquals("Fizz", app.compute(3))
    }
    
    @Test
    public void test4(){
        assertEquals("4", app.compute(4))
    }
    
    @Test
    public void test5(){
        assertEquals("Buzz", app.compute(5))
    }
    
    @Test
    public void test6(){
        assertEquals("Fizz", app.compute(6))
    }
    
    @Test
    public void test7(){
        assertEquals("7", app.compute(7))
    }
    
    @Test
    public void test8(){
        assertEquals("8", app.compute(8))
    }
    
    @Test
    public void test9(){
        assertEquals("Fizz", app.compute(9))
    }
    
    @Test
    public void test10(){
        assertEquals("Buzz", app.compute(10))
    }
    
    @Test
    public void test13(){
        assertEquals("Fizz", app.compute(13))
    }
    
    @Test
    public void test15(){
        assertEquals("FizzBuzz", app.compute(15))
    }
    
    @Test
    public void testMultipleOf3() {
        checkMultiples(3, "Fizz")
    }
    
    private checkMultiples(int n, String result) {
        def multiples = (1..100).findAll { it % n == 0 }
        multiples.each {
            def fizzbuzz = app.compute(it)
            assertTrue(fizzbuzz.contains(result))
        }
    }
    
    @Test
    public void testMultipleOf5() {
        checkMultiples(5, "Buzz")
    }
}
