package com.japaz.katas.mfb;

public class FizzNumberPrinter implements NumberPrinter {

	@Override
	public String print(int number) {
		if (number%3==0) {
			return "Fizz";
		} else {
			return "";
		}
	}

}
