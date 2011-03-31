class Fixnum
  private
  
  def divisible_por_tres?
    self % 3 == 0
  end
  
  def divisible_por_cinco?
    self % 5 == 0
  end  
  
  def contiene_un_tres?
    self.to_s.include? '3'
  end
  
  def contiene_un_cinco?
    self.to_s.include? '5'
  end
  
  public
  
  def fizzbuzz
    return "FizzBuzz" if divisible_por_tres? and divisible_por_cinco?
    return "Fizz" if divisible_por_tres? or contiene_un_tres?
    return "Buzz" if divisible_por_cinco? or contiene_un_cinco?
    self
  end
  
end
