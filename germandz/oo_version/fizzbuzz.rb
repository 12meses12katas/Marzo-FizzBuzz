class Fixnum
  def to_fizzbuzz special_numbers
    to_say = special_numbers.keys.inject("") do | to_say, number |
      to_say << say_replace(number, special_numbers[number])
    end
    to_say.empty? ? self.to_s : to_say
  end

  protected
  def say_replace number, replacement
    must_replace?(number) ? replacement : "" 
  end
  
  def must_replace? number
    multiple_of?(number) || includes_digit?(number)
  end

  def multiple_of? divisor
    self % divisor == 0
  end
  
  def includes_digit? digit
    self.to_s.include? digit.to_s
  end
end

def fizzbuzz
  special_numbers = { 3=>"Fizz", 5=>"Buzz" }
  (1..100).inject("") do |result, number|
    result << number.to_fizzbuzz(special_numbers) << "\n"
  end
end