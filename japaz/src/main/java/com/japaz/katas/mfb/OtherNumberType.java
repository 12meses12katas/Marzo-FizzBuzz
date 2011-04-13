package com.japaz.katas.mfb;

import java.util.ArrayList;
import java.util.List;

public class OtherNumberType implements NumberType {
	
	List<NumberType> numberPrinters = new ArrayList<NumberType>();
	
	public void addNumberPrinter(NumberType numberPrinter) {
		numberPrinters.add(numberPrinter);
	}
	
	@Override
	public boolean isOfThisType(int number) {
		for (NumberType numberPrinter : numberPrinters) {
			if (numberPrinter.isOfThisType(number)) {
				return false;
			}
		}
		return true;
	}
	
	@Override
	public String print(int number) {
		if (isOfThisType(number)) {
			return String.valueOf(number);
		} else {
			return "";
		}
	}

}
