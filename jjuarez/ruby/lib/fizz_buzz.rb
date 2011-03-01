class Fixnum

  FIZZ = "Fizz"
  BUZZ = "Buzz"
  
  def to_fizzbuzz
    
    str = "#{FIZZ if self % 3 == 0}#{BUZZ if self % 5 == 0}"

    str.empty? ? "#{self}" : str
  end
end