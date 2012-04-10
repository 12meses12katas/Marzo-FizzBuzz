class Fizzbuzz
  def say(number)
  	if number == 3
  		@number = "Fizz"
  	else
  		@number = String(number)
  	end
  	return @number
  end
end