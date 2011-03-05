class Number {
	
	Integer number;
	
	public String toString() {
		return number.toString()
	}
	
	public Number(Integer number) {
		this.number = number
	}
	
	public boolean isDivisibleByFive() {
		return divisibleBy(5)
	}
	
	public boolean isDivisibleByThree() {
		return divisibleBy(3)
	}
	
	public boolean divisibleBy(Integer aNumber) {
		return number % aNumber == 0
	}
	
	public boolean contains(Integer aNumber) {
		return toString().indexOf(aNumber.toString()) != -1
	}
}

class FizzBuzz {

	private static Integer THREE = 3
	private static Integer FIVE = 5
	private static String  FIZZ  = 'Fizz'
	private static String  BUZZ  = 'Buzz'

	String fizzBuzz(Integer number) {

		Number n = new Number(number)		
		if (n.contains(3) && n.contains(5)) {
			return FIZZ + BUZZ
		}
		if (n.divisibleBy(THREE) && n.divisibleBy(FIVE)) {
			return FIZZ + BUZZ
		}
		if (n.divisibleBy(THREE)) {
			return FIZZ
		}
		if (n.divisibleBy(FIVE)) {
			return BUZZ
		}
		return number.toString()
	}
}

