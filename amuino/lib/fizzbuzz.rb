class Fixnum
  def fiz?
    self % 3 == 0
  end
  
  def buzz?
    self % 5 == 0
  end
  
  def play_fizzbuzz 
    return "FizzBuzz" if fiz? && buzz?
    return "Fizz" if fiz?
    return "Buzz" if buzz?
    return self
  end
end

def fizzbuzzs_up_to(number)
  (1..number).to_a.collect{|i| i.play_fizzbuzz}
end

