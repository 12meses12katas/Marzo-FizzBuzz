class Fizzbuzz
  def say(number)
  	@number
  	if number % 3 == 0
  		@number = "Fizz"
  	elsif number % 5 == 0
  		@number = "Buzz"
  	else
  		@number = String(number)
  	end
  	return @number
  end
end