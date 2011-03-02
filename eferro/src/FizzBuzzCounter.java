
public class FizzBuzzCounter {

	int counter = 0;
	
	public FizzBuzzCounter(){
	}
	
	public String tick() {
		String ret = null;
		counter++;
		if ((counter % 3 == 0) && (counter % 5 == 0))  {
			ret = "FizzBuzz";
		} else if (counter % 3 == 0)  {
			ret = "Fizz";
		} else if(counter % 5 == 0) {
			ret = "Buzz";
		} else {
			ret = String.valueOf(counter); 
		}
		return ret;
	}

}
