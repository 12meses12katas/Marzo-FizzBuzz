package com.kata.marzo;

public class FizzBuzz {

	private static final String NEW_LINE = "\n";
	private static final String BUZZ = "Buzz";
	private static final String FIZZ = "Fizz";

	public String print() {
		StringBuffer result = new StringBuffer();
		for (int number = 1; number <= 100; number++) {
			result.append(checkNumber(number));
			result.append(NEW_LINE);
		}
		return result.toString();
	}

	private String checkNumber(int number) {

		if (isFizzBuzz(number)) {
			return FIZZ + BUZZ;
		}

		if (isDivisibleBy(number,3)) {
			return FIZZ;
		}
		if (isDivisibleBy(number,5)) {
			return BUZZ;
		}

		return String.valueOf(number);
	}


	private boolean isDivisibleBy(int number, int divisible) {
		return number % divisible == 0;
	}

	private boolean isFizzBuzz(int number) {
		return isDivisibleBy(number,3) && isDivisibleBy(number,5);
	}

}
