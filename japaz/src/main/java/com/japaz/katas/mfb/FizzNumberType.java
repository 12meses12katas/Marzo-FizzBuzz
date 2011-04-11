package com.japaz.katas.mfb;

public class FizzNumberType extends NamedNumberType {

	public FizzNumberType() {
		NUMBER_WORD = "Fizz";
	}
	
	@Override
	public boolean isOfThisType(int number) {
		return (number%3==0)||String.valueOf(number).contains("3");
	}
}
