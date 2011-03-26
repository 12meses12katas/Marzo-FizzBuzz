import groovy.util.GroovyTestCase;

class FizzBuzz extends GroovyTestCase{
	
	static main(args) {
		def fizzBuzz = new FizzBuzz() 
		(1..100).each{ number ->
		println "Number " + number + ":" + fizzBuzz.say(number)
		}
	}
	String say(Integer number){
		String response = ""
		if (isFizz(number)){
			response = "Fizz"
		}
		if (isBuzz(number)){
			response += "Buzz"
		}
		return response?:number.toString()
	}
	boolean isBuzz(Integer number){
		number%5 == 0
	}
	boolean isFizz(Integer number){
		number%3 == 0
	}
	void testNormalNumbersAreNormal(){
		assert say(1) == "1"
		assert say(2) == "2"
		assert say(7) == "7"
	}
	void testDivisibleByThreeIsFizz(){
		assert say(3) == "Fizz"
		assert say(6) == "Fizz"
		assert say(9) == "Fizz"
		assert say(12) == "Fizz"
	}
	void testDivisibleByFiveIsBuzz(){
		assert say(5) == "Buzz"
		assert say(10) == "Buzz"
	}
	void testDivisibleByThreeAndFiveIsFizzBuzz(){
		assert say(15) == "FizzBuzz"
		assert say(30) == "FizzBuzz"
	}
}