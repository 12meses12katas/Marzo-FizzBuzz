
public class FizzBuzzAnswer implements SpecialAnswer {

	@Override
	public String getAnswerTo(Integer number) {
		StringBuffer answer = new StringBuffer();
		
		try {
			String texto = number.toString();
			
			for(FizzBuzzNumbers fizzBuzzCase : FizzBuzzNumbers.values()) {
				if(0 == number % fizzBuzzCase.getNumber() ||
						texto.contains(fizzBuzzCase.getNumber().toString())) {
					answer.append(fizzBuzzCase.getAnswer());
				}
			}

			if(0 == answer.length()) {
				return number.toString();
			}
			
		} catch (NullPointerException npe) {
			return new String();
		}

		return answer.toString();
	}

}
