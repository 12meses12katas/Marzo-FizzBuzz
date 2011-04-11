package com.japaz.katas.mfb;

public class DefaultPrintNumber implements NumberPrinter {

	@Override
	public String print(int number) {
		if (number%3==0 || number%5==0) {
			return "";
		} else {
			return String.valueOf(number);
		}
	}

}
