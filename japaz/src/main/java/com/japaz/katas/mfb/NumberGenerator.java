package com.japaz.katas.mfb;

import java.util.ArrayList;
import java.util.List;

public class NumberGenerator {
	List<NumberType> numberPrinters = new ArrayList<NumberType>();
	
	public void addNumberPrinter(NumberType numberPrinter) {
		numberPrinters.add(numberPrinter);
	}
	
	public String printNumber(int number) {
		StringBuffer numberRepresentation = new StringBuffer();
		
		for (NumberType numberPrinter : numberPrinters) {
			numberRepresentation.append(numberPrinter.print(number));
		}
		
		return numberRepresentation.toString();
	}
}
