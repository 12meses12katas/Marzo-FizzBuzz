require 'rspec'

def fizzbuzz(i)
  return "FizzBuzz" if i.fizz? && i.buzz?
  return "Buzz"     if i.buzz?
  return "Fizz"     if i.fizz?
  i
end

class Fixnum
  def fizz?
    waduzz? 3
  end
  
  def buzz?
    waduzz? 5
  end
  
  private
  
  def waduzz?(i)
    divisible_by?(i) || to_s =~ /#{i}/
  end
  
  def divisible_by?(i)
    self % i == 0
  end
end

(1..100).each do |i|
  puts fizzbuzz(i)
end

describe "fizzbuzz" do
  {
    1 => 1,
    2 => 2,
    3 => "Fizz",
    4 => 4,
    5 => "Buzz",
    6 => "Fizz",
    7 => 7,
    8 => 8,
    9 => "Fizz",
    10 => "Buzz",
    13 => "Fizz",
    15 => "FizzBuzz",
    25 => "Buzz",
    30 => "FizzBuzz",
    31 => "Fizz",
    32 => "Fizz",
    33 => "Fizz",
    34 => "Fizz",
    35 => "FizzBuzz",
    36 => "Fizz",
    37 => "Fizz",
    38 => "Fizz",
    39 => "Fizz",
    40 => "Buzz",
    41 => 41,
    43 => "Fizz",
    45 => "FizzBuzz",
    50 => "Buzz",
    51 => "FizzBuzz",
    52 => "Buzz",
    53 => "FizzBuzz",
    54 => "FizzBuzz",
    55 => "Buzz",
    56 => "Buzz",
    57 => "FizzBuzz",
    58 => "Buzz",
    59 => "Buzz",
    60 => "FizzBuzz",
    61 => 61,
    62 => 62,
    63 => "Fizz"
  }.each do |i, s|
    it "should return #{s.inspect} for #{i}" do
      fizzbuzz(i).should == s
    end
  end
end

