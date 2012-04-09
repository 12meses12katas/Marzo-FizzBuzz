class Fixnum
  
  def sayFizzBuzz
    fizz = self % 3 == 0 || to_s.include?('3') ? 'Fizz' : ''
    buzz = self % 5 == 0 || to_s.include?('5') ? 'Buzz' : ''
    (fizz + buzz).empty? ? to_s : fizz + buzz
  end

end

class FizzBuzz
  def self.fizzBuzz(range)
    range.each{|n| puts n.sayFizzBuzz }
  end
end