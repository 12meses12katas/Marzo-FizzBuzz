class Fixnum
	private 

	def sayFizz
		return 'Fizz' if self % 3 == 0 or self.to_s.include? '3'
		''
	end

	def sayBuzz
		return 'Buzz' if self % 5 == 0 or self.to_s.include? '5'
		''
	end
	
	public
	
	def sayFizzBuzz
		return self.to_s if(result = sayFizz + sayBuzz).empty?
		result
	end
end
