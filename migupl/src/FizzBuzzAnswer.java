public class FizzBuzzAnswer implements SpecialAnswer {

	@Override
	public String getAnswerTo(Integer number) {
		StringBuffer answer = new StringBuffer();
		
		if(null == number) {
			return INVALID_NUMBER_ANSWER;
		}

		for(FizzBuzzNumbers fizzBuzzCase : FizzBuzzNumbers.values()) {
			if (fizzBuzzCase.isFizzBuzz(number)){
				answer.append(fizzBuzzCase.getAnswer());
			}
		}

		return (0 == answer.length()) ? number.toString() : answer.toString();
	}

}
