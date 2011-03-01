$:.unshift( File.join( File.dirname( __FILE__ ), %w[.. .. lib] ) )


require 'test/unit'
require 'fizz_buzz'


class TC_Fixnum < Test::Unit::TestCase

  def test_fizz
    assert( Fixnum::FIZZ == 3.to_fizzbuzz )
    (1..100).each { |i| assert_equal( (3*i).to_fizzbuzz, Fixnum::FIZZ ) unless( i % 5 == 0 )}
  end
  
  def test_buzz
    assert( Fixnum::BUZZ == 5.to_fizzbuzz )
    (1..100).each { |i| assert_equal( (5*i).to_fizzbuzz, Fixnum::BUZZ ) unless( i % 3 == 0 )}
  end
  
  def test_fizzbuzz
    assert( "#{Fixnum::FIZZ}#{Fixnum::BUZZ}" == (3*5).to_fizzbuzz )    
    (1..100).each { |i| assert_equal( (3*5*i).to_fizzbuzz, "#{Fixnum::FIZZ}#{Fixnum::BUZZ}" ) }
  end
end