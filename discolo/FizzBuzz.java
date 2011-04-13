package es.rromero.kata3;

public class FizzBuzz {

	private static final String FIZZ = "Fizz";
	private static final String BUZZ = "Buzz";
	
	public String sayFizzBuzz(int num) {
		StringBuilder sb = new StringBuilder();
		String sNum = Integer.toString(num);
		if(num % 3 == 0 || sNum.contains("3")) {
			sb.append(FIZZ);
		}
		if(num % 5 == 0 || sNum.contains("5")) {
			sb.append(BUZZ);
		}
		if(sb.length() == 0) {
			sb.append(sNum);
		}
		return sb.toString();
	}
	
	public String printFrom1to100() {
		StringBuilder sb = new StringBuilder();
		for(int i = 1; i<=100; i++) {
			sb.append(sayFizzBuzz(i)).append("\n");
		}
		return sb.toString();
	}
	
	public static void main(String[] args) {
		FizzBuzz fb = new FizzBuzz();
		System.out.println(fb.printFrom1to100());
	}
}
