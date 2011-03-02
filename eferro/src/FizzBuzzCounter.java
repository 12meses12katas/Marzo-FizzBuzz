
public class FizzBuzzCounter {

	int counter = 0;
	
	public FizzBuzzCounter(){
	}
	
	public boolean isFizz(int i){
		if ((i%3==0) || (String.valueOf(i).indexOf('3')!=-1)) return true;
		return false;
	}
	public boolean isBuzz(int i){
		if ((i%5==0) || (String.valueOf(i).indexOf('5')!=-1)) return true;
		return false;
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
