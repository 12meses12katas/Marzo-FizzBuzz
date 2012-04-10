class Fizzbuzz
  def say(number)
  	@number = ""
  	
  	if number % 3 == 0
  		@number = "Fizz"
  	end
  	if number % 5 == 0
  		@number = @number + "Buzz"
  	end
  	if @number == ""
  		@number = String(number)
  	end
  	return @number
  end
end