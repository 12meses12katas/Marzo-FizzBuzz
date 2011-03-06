import groovy.util.GroovyTestCase;

class FizzBuzz extends GroovyTestCase{
	
	static main(args) {
		def fizzBuzz = new FizzBuzz() 
		(1..33).each{ number ->
		println "Number " + number + ":" + fizzBuzz.say(number)
		}
	}
	

	String say(Integer number){
		String response = ""
		if (number%3 == 0){
			response = "Fizz"
		}
		if (number%5 == 0){
			response += "Buzz"
		}
		return response?:number.toString()
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