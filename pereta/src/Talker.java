
public class Talker {
	
	private int divisor;
	private String word;
	
	public Talker(String word, int divisor){
		this.word = word;
		this.divisor = divisor;
	}
	
	public String sayWord(int numberToCheck){
		boolean isDivisible = numberToCheck % this.divisor == 0;
		boolean hasTheDivisor = containDivisor(numberToCheck);
		if(isDivisible || hasTheDivisor)
			return this.word;
		return "";
	}

	private boolean containDivisor(int numberToCheck) {
		String number = String.valueOf(numberToCheck);
		String divisor = String.valueOf(this.divisor);
		return number.contains(divisor);
	}

	public int getDivisor() {
		return divisor;
	}

	public String getWord() {
		return word;
	}	
}
