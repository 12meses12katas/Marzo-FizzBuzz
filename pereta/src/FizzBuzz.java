import java.util.ArrayList;
import java.util.List;


public class FizzBuzz {
	
	private List<Talker> talkers;
	
	public FizzBuzz(){
		this.talkers = new ArrayList<Talker>();
	}
	
	public String fizzBuzzer(int numberToFizzBuzzer){
		String numberFizzBuzzed = "";
		
		for (Talker talker : this.talkers)
			numberFizzBuzzed += talker.sayWord(numberToFizzBuzzer);			
		
		numberFizzBuzzed += sayNumber(numberToFizzBuzzer, numberFizzBuzzed);
		
		return numberFizzBuzzed;
	}
	
	private String sayNumber(int numberToFizzBuzzer, String numberFizzBuzzed){
		if(numberFizzBuzzed.isEmpty())
			return String.valueOf(numberToFizzBuzzer);
		return "";
	}
	
	public boolean addTalker(Talker talker){
		return this.talkers.add(talker);
	}
	
	public Talker deleteTalker(int index){
		return this.talkers.remove(index);
	}

	public List<Talker> getTalkers() {
		return talkers;
	}
}
