public enum FizzBuzzNumbers {
	FIZZ(new Integer(3), "Fizz"),
	BUZZ(new Integer(5), "Buzz");
	
	private Integer value;
	private String text;
	
	FizzBuzzNumbers(Integer num, String text) {
		value = num;
		this.text = text;
	}
	
	public Integer getNumber() {
		return value;
	}
	
	public String getAnswer() {
		return text;
	}
	
	public Boolean isFizzBuzz(Integer number) {
		String texto;
		
		try {
			texto = number.toString();
		} catch (NullPointerException npe) {
			return Boolean.FALSE;
		}
		
		return (0 == number % getNumber() ||
				texto.contains(getNumber().toString()));
	}
}
