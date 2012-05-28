
public class FizzBuzzKata {

	public static void main(String[] args) {
		SpecialAnswer answers = new FizzBuzzAnswer();
		
		for(int i = 1; i < 101;i++) {
			System.out.println(answers.getAnswerTo(new Integer(i)));
		}
	}

}
