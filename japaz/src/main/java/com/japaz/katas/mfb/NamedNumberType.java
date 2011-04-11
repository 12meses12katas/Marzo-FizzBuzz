package com.japaz.katas.mfb;

public abstract class NamedNumberType implements NumberType {

	protected String NUMBER_WORD = "";

	@Override
	public String print(int number) {
		if (isOfThisType(number)) {
			return NUMBER_WORD;
		} else {
			return "";
		}
	}
}
