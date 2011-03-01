$:.unshift( File.join( File.dirname( __FILE__ ), %w[.. .. lib] ) )


require 'test/unit'
require 'fizz_buzz'


class TC_Fixnum < Test::Unit::TestCase

  MAX = 100
  
  def test_fizz
    
    assert_equal( Fixnum::FIZZ, 3.to_fizzbuzz )

    (1..MAX/3).collect { |x| 3*x }.each do |i|
      
      assert_equal( Fixnum::FIZZ, i.to_fizzbuzz ) unless( i % 5 == 0 || i.to_s.include?( '5') )
    end
  end
  
  def test_buzz
    
    assert_equal( Fixnum::BUZZ, 5.to_fizzbuzz )
    
    (1..MAX/10).collect { |x| 5*x }.each do |i|

      assert_equal( Fixnum::BUZZ, i.to_fizzbuzz ) unless( i % 3 == 0 || i.to_s.include?( '3' ) )
    end
  end
  
  def test_fizzbuzz
    
    assert_equal( "#{Fixnum::FIZZ}#{Fixnum::BUZZ}", (3*5).to_fizzbuzz )    
    (1..100).each { |i| assert_equal( (3*5*i).to_fizzbuzz, "#{Fixnum::FIZZ}#{Fixnum::BUZZ}" ) }
  end
end