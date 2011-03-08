require "rspec"

class Integer

  def fizzbuzz
    return self unless fizz? || buzz?
    return "FizzBuzz" if fizz? && buzz?
    return "Fizz" if fizz?
    "Buzz"
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
end

(1..100).each do |n|
  puts n.fizzbuzz
end


describe "FizzBuzz identity cases" do

  it "1 should be 1" do
    1.fizzbuzz.should == 1
  end
  it "1 should be 4" do
    4.fizzbuzz.should == 4
  end
  it "1 should be 98" do
    98.fizzbuzz.should == 98
  end

  describe "FizzBuzz Fizz cases" do

    it "3 should be Fizz" do
      3.fizzbuzz.should == "Fizz"
    end

    it "6 should be Fizz" do
      6.fizzbuzz.should == "Fizz"
    end

    it "99 should be Fizz" do
      99.fizzbuzz.should == "Fizz"
    end
  end


   describe "FizzBuzz Buzz cases" do

    it "5 should be Buzz" do
      5.fizzbuzz.should == "Buzz"
    end

    it "100 should be Buzz" do
      100.fizzbuzz.should == "Buzz"
    end
   end


   describe "FizzBuzz FizzBuzz cases" do

    it "15 should be Buzz" do
      15.fizzbuzz.should == "FizzBuzz"
    end

    it "45 should be Buzz" do
      45.fizzbuzz.should == "FizzBuzz"
    end

    it "90 should be Buzz" do
      90.fizzbuzz.should == "FizzBuzz"
    end
  end
end