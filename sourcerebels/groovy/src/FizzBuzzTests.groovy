class FizzBuzzTests extends GroovyTestCase {
	
	protected game = new FizzBuzz()
	
	void testFrom1To5() {
		
		assertEquals '1',    game.fizzBuzz(1)
		assertEquals '2',    game.fizzBuzz(2)
		assertEquals 'Fizz', game.fizzBuzz(3)
		assertEquals '4',	 game.fizzBuzz(4)
		assertEquals 'Buzz', game.fizzBuzz(5)
	}
	
	void testFrom6To10() {
		
		assertEquals 'Fizz', game.fizzBuzz(6)
		assertEquals '7',    game.fizzBuzz(7)
		assertEquals '8',    game.fizzBuzz(8)
		assertEquals 'Fizz', game.fizzBuzz(9)
		assertEquals 'Buzz', game.fizzBuzz(10)
	}
	
	void testSomeFizzBuzz() {
		
		assertEquals 'FizzBuzz', game.fizzBuzz(15)
		assertEquals 'FizzBuzz', game.fizzBuzz(30)
		assertEquals 'FizzBuzz', game.fizzBuzz(45)
	}
	
	void testContainsThreeOrFive() {
		
		assertEquals 'FizzBuzz', game.fizzBuzz(35)
	}
}
