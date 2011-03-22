class Fixnum

  FIZZ = "Fizz"
  BUZZ = "Buzz"
  
  def to_fizzbuzz
    
    str_value = self.to_s
    str       = "#{FIZZ if( self % 3 == 0 || str_value.include?( '3' ) )}#{BUZZ if( self % 5 == 0 || str_value.include?( '5' ) )}"
   
    str.empty? ? str_value : str
  end
end