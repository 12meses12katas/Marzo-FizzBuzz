class FizzBuzz

  private
  def is_fizz? (number)
    number % 3 == 0 or number.to_s.include? "3"
  end
  def is_buzz? (number)
    number % 5 == 0 or number.to_s.include? "5"
  end

  public
  def say (number)
    result = ""
    result << "Fizz" if is_fizz? number
    result << "Buzz" if is_buzz? number
    result = number.to_s if result.empty?
    result
  end

end
