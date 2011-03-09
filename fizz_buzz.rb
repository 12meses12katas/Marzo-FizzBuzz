(1..100).each do |i|
	if i.is_fizz? == false || i.is_buzz? == false || i.is_fizzbuzz == false
		puts i
	end
end

def is_fizz?
	self % 3 == 0 || self.to_s.include?('3')
	self.replace 'Fizz'
end

def is_buzz?
	self % 5 == 0 || self.to_s.include?('5')
	self.replace 'Buzz'
end

def is_fizzbuzz?
	is_fizz? && is_buzz?
end
