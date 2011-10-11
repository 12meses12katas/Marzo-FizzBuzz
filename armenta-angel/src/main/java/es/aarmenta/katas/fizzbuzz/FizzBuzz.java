package es.aarmenta.katas.fizzbuzz;

/**
 * 
 * @author angelarmentamartinez
 * 
 */
public class FizzBuzz {

	// -------------------------------------------------------------- Constantes

	public final static String FIZZ = "Fizz";

	public final static int FIZZ_NUMBER = 3;

	public final static String BUZZ = "Buzz";

	public final static int BUZZ_NUMBER = 5;

	public final static int DEFAULT_VERSION = 1;

	public final static int EXTENDED_VERSION = 2;

	// --------------------------------------------------------------- Atributos

	private int version = DEFAULT_VERSION;

	// ------------------------------------------------------- Getters & Setters

	public void setVersion(int pVersion) {
		if (pVersion == DEFAULT_VERSION || pVersion == EXTENDED_VERSION) {
			version = pVersion;
		}
	}

	// -------------------------------------------------------- Metodos publicos

	public String process(int number) {

		String out = "";

		if (isFizz(number)) {
			out = FIZZ;
		}

		if (isBuzz(number)) {
			out += BUZZ;
		}

		if (out.length() == 0) {
			out = String.valueOf(number);
		}

		return out;
	}

	// ------------------------------------------------------------- Metodo main

	public static void main(String[] args) {

		FizzBuzz myFizzBuzz = new FizzBuzz();

		myFizzBuzz.setVersion(FizzBuzz.DEFAULT_VERSION);
		for (int i = 1; i <= 100; i++) {
			System.out.println(myFizzBuzz.process(i));
		}

		myFizzBuzz.setVersion(FizzBuzz.EXTENDED_VERSION);
		for (int i = 1; i <= 100; i++) {
			System.out.println(myFizzBuzz.process(i));
		}
	}

	// -------------------------------------------------------- Metodos privados

	private boolean isDivisibleBy(int number, int divisor) {
		return number % divisor == 0;
	}

	private boolean isFizz(int number) {
		boolean result;

		result = isDivisibleBy(number, FIZZ_NUMBER);
		if (!result && version == EXTENDED_VERSION) {
			result = String.valueOf(number)
					.indexOf(String.valueOf(FIZZ_NUMBER)) >= 0;
		}

		return result;
	}

	private boolean isBuzz(int number) {
		boolean result;

		result = isDivisibleBy(number, BUZZ_NUMBER);
		if (!result && version == EXTENDED_VERSION) {
			result = String.valueOf(number)
					.indexOf(String.valueOf(BUZZ_NUMBER)) >= 0;
		}

		return result;
	}
}
