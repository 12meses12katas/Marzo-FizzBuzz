require File.join(File.dirname(__FILE__), '..', 'lib', 'fizz_buzz')

describe Fixnum do

  describe "#say_fizz_buzz" do
    it "say the given number" do
      1.say_fizz_buzz.should == 1
      2.say_fizz_buzz.should == 2
    end

    it "say fizz for number multiple of 3" do
      3.say_fizz_buzz.should == "Fizz"
      6.say_fizz_buzz.should == "Fizz"
    end

    it "say buzz for number multiple of 5" do
      5.say_fizz_buzz.should == "Buzz"
      10.say_fizz_buzz.should == "Buzz"
    end

    it "say fizzbuzz for a number multiple of 3 and 5" do
      15.say_fizz_buzz.should == "FizzBuzz"
      30.say_fizz_buzz.should == "FizzBuzz"
    end

    it "say fizz for number that includes 3" do
      13.say_fizz_buzz.should == "Fizz"
      33.say_fizz_buzz.should == "Fizz"
    end

    it "say buzz for number that includes 5" do
      55.say_fizz_buzz.should == "Buzz"
      52.say_fizz_buzz.should == "Buzz"
    end

    it "say fizzbuzz for a number that includes 3 and 5" do
      53.say_fizz_buzz.should == "FizzBuzz"
      35.say_fizz_buzz.should == "FizzBuzz"
    end
  end
end