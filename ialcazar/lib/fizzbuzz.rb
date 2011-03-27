class Fixnum
  def fizzbuzz?
    return "Fizz" if self % 3 == 0
    return "Buzz" if self % 5 == 0
    self
  end
  
end
