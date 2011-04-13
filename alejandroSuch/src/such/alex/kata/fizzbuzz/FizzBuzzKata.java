package such.alex.kata.fizzbuzz;

public class FizzBuzzKata {
	private static final String FIZZ = "Fizz";
	private static final String BUZZ = "Buzz";
	private static final String FIZZBUZZ = "FizzBuzz?";

	public String fizzBuzz(Integer number) {
		String sumberStr = number.toString();
		int flag = 0;
		flag+= (number % 3 == 0)?1:0;
		flag+= (number % 5 == 0)?2:0;
		return (flag == 0)?sumberStr:(flag == 1)?FIZZ:(flag == 2)?BUZZ:FIZZBUZZ;
	}
	
	public String fizzBuzzStage2(Integer number) {
		String numberStr = number.toString();
		int flag = 0;
		flag+=(number % 3 == 0 || numberStr.contains("3"))?1:0;
		flag+=(number % 5 == 0 || numberStr.contains("5"))?2:0;
		return (flag == 0)?numberStr:(flag == 1)?FIZZ:(flag == 2)?BUZZ:FIZZBUZZ;
	}
}