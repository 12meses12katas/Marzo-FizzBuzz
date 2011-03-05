class Number {

	Integer number;
	
	public String toString() {
		return number.toString()
	}
	
	public Number(Integer number) {
		this.number = number
	}
	
	public boolean divisibleBy(Integer aNumber) {
		return number % aNumber == 0
	}
	
	public boolean contains(Integer aNumber) {
		return toString().indexOf(aNumber.toString()) != -1
	}
}

class FizzBuzz {

	private static String  FIZZ  = 'Fizz'
	private static String  BUZZ  = 'Buzz'
	private static Integer THREE = 3
	private static Integer FIVE = 5

	private theNumber

	private boolean sayFizz() {

		if (theNumber.divisibleBy(THREE) || theNumber.contains(THREE)) {
			return true
		}
		return false
	}

	private boolean sayBuzz() {

		if (theNumber.divisibleBy(FIVE) || theNumber.contains(FIVE)) {
			return true
		}
		return false
	}
	
	private boolean sayFizzBuzz() {
		
		if (sayFizz() && sayBuzz()) {
			return true
		}
		return false
	}
	
	String fizzBuzz(Integer number) {

		theNumber = new Number(number)
		if (sayFizzBuzz()) {
			return FIZZ + BUZZ
		}		
		if (sayFizz()) {
			return FIZZ
		}
		if (sayBuzz()) {
			return BUZZ
		}
		return number.toString()
	}
}

