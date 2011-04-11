package com.japaz.katas.mfb;

public class BuzzNumberPrinter extends NamedNumberType {
	
	public BuzzNumberPrinter() {
		NUMBER_WORD = "Buzz";
	}
	
	@Override
	public boolean isOfThisType(int number) {
		return (number%5==0)||String.valueOf(number).contains("5");
	}
}
