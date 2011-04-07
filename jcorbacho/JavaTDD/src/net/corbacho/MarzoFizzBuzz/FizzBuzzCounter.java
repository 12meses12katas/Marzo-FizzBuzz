package net.corbacho.MarzoFizzBuzz;

public class FizzBuzzCounter {

	int counter = 0;
	
	public FizzBuzzCounter(){
	}
	
	private boolean isDivisible(int number, int divisor) {
		return number % divisor == 0;
	}
	
	public boolean isFizz(int i){
		if ((isDivisible(i,3)) || (String.valueOf(i).indexOf('3')!=-1)) return true;
		return false;
	}
	public boolean isBuzz(int i){
		if (isDivisible(i,5) || (String.valueOf(i).indexOf('5')!=-1)) return true;
		return false;
	}
	
	public String tick() {
		String ret = null;
		counter++;
		if (isDivisible(counter, 3) && isDivisible(counter,5))  {
			ret = "FizzBuzz";
		} else if (isDivisible(counter, 3))  {
			ret = "Fizz";
		} else if(isDivisible(counter, 5)) {
			ret = "Buzz";
		} else {
			ret = String.valueOf(counter); 
		}
		return ret;
	}
}
