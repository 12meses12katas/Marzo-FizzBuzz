require "rspec"

class Integer

  def to_fizzbuzz
    to_fizzbuzz1
  end

  def to_fizzbuzz1
    return "FizzBuzz" if fizzbuzz?
    return "Fizz" if fizz?
    return "Buzz" if buzz?
    self
  end

  FIZZBUZZ2 = { FizzBuzz: 15, Buzz: 5, Fizz: 3}

  def to_fizzbuzz2
   FIZZBUZZ2.each do  |name, divider|
     return name.to_s if multiple_of? divider
   end
   self
  end

  FIZZBUZZ3 = { fizzbuzz?: "FizzBuzz", buzz?: "Buzz", fizz?: "Fizz"}

  def to_fizzbuzz3
    FIZZBUZZ3.each do  |method , name|
      return name if send method
    end
    self
  end

  def multiple_of?  n
    self % n == 0
  end

  def fizz?
    multiple_of? 3
  end

  def buzz?
    multiple_of? 5
  end

  def fizzbuzz?
    multiple_of? 15
  end
end

# (1..100).each do |n|
#  puts n.to_fizzbuzz
# end


describe "FizzBuzz identity cases" do

  it "1 should be 1" do
    1.to_fizzbuzz.should == 1
  end
  it "4 should be 4" do
    4.to_fizzbuzz.should == 4
  end
  it "98 should be 98" do
    98.to_fizzbuzz.should == 98
  end
end

describe "FizzBuzz Fizz cases" do

    it "3 should be Fizz" do
      3.to_fizzbuzz.should == "Fizz"
    end

    it "6 should be Fizz" do
      6.to_fizzbuzz.should == "Fizz"
    end

    it "99 should be Fizz" do
      99.to_fizzbuzz.should == "Fizz"
    end
end

describe "FizzBuzz Buzz cases" do

    it "5 should be Buzz" do
      5.to_fizzbuzz.should == "Buzz"
    end

    it "100 should be Buzz" do
      100.to_fizzbuzz.should == "Buzz"
    end
end

describe "FizzBuzz FizzBuzz cases" do

    it "15 should be Buzz" do
      15.to_fizzbuzz.should == "FizzBuzz"
    end

    it "45 should be Buzz" do
      45.to_fizzbuzz.should == "FizzBuzz"
    end

    it "90 should be Buzz" do
      90.to_fizzbuzz.should == "FizzBuzz"
    end
end


describe "FizzBuzz testing all implementations" do
   [:to_fizzbuzz1, :to_fizzbuzz2, :to_fizzbuzz3].each do |impl|
       (1..100).each do |n|
         it "trying impl. #{impl} for number #{n}" do
           n.send(impl).should == n.to_fizzbuzz
         end
       end
    end
end