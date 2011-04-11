package com.japaz.katas.mfb;

public class BuzzNumberPrinter implements NumberPrinter {

	@Override
	public String print(int number) {
		if (number%5==0) {
			return "Buzz";
		} else {
			return "";
		}
	}

}
