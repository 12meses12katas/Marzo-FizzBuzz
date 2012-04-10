class Fizzbuzz
  def say(number)
  	if number == 3
  		@number = "Fizz"
  	elsif number == 5
  		@number = "Buzz"
  	else
  		@number = String(number)
  	end
  	return @number
  end
end