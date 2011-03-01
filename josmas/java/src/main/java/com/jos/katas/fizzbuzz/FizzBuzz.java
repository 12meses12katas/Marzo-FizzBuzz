package com.jos.katas.fizzbuzz;

public class FizzBuzz {

	public String say(int number) {
		validateInput(number);
		
		StringBuilder result = new StringBuilder();
		
		if (isFizz(number))
			result.append("fizz");
		
		if (isBuzz(number))
			result.append("buzz");
		
		if (result.toString().isEmpty())
			result.append(number);
		
		return result.toString();
	}

	private void validateInput(int number) {
		if (number < 0 || number >100)
			throw new IllegalArgumentException("Valid numbers are 1 to 100");
	}

	private boolean isFizz(int number){
		boolean isFizz = false;
		isFizz = ( ((number % 3) == 0) || ((number+"").contains("3")) );
		return isFizz;
	}
	
	private boolean isBuzz(int number){
		boolean isBuzz = false;
		isBuzz = ( (number % 5) == 0 || (number+"").contains("5") );
		return isBuzz;
	}
}
