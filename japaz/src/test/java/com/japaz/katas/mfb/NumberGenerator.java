package com.japaz.katas.mfb;

import java.util.ArrayList;
import java.util.List;

public class NumberGenerator {
	List<NumberPrinter> numberPrinters = new ArrayList<NumberPrinter>();
	
	public void addNumberPrinter(NumberPrinter numberPrinter) {
		numberPrinters.add(numberPrinter);
	}
	
	public String printNumber(int number) {
		StringBuffer numberRepresentation = new StringBuffer();
		
		for (NumberPrinter numberPrinter : numberPrinters) {
			numberRepresentation.append(numberPrinter.print(number));
		}
		
		return numberRepresentation.toString();
	}
}
