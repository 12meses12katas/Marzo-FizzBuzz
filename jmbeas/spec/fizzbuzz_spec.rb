require "fizzbuzz"

describe "FizzBuzz" do

  before(:each) do
    @fizzbuzz = FizzBuzz.new()
  end

  it "will say the given number" do
    @fizzbuzz.say(1).should == "1"
    @fizzbuzz.say(2).should == "2"
  end

  it "will say 'Fizz' when the number is multiple of 3" do
    @fizzbuzz.say(3).should == "Fizz"
    @fizzbuzz.say(6).should == "Fizz"
  end

  it "will say 'Buzz' when the number is multiple of 5" do
    @fizzbuzz.say(5).should == "Buzz"
    @fizzbuzz.say(10).should == "Buzz"
  end

  it "will say 'FizzBuzz' when the number is multiple of 3 and 5" do
    @fizzbuzz.say(15).should == "FizzBuzz"
  end

  it "will say 'Fizz' when the number has a 3 in it" do
    @fizzbuzz.say(13).should == "Fizz"
    @fizzbuzz.say(23).should == "Fizz"
    @fizzbuzz.say(31).should == "Fizz"
  end

  it "will say 'Buzz' when the number has a 5 in it" do
    @fizzbuzz.say(52).should == "Buzz"
  end

  it "will say 'FizzBuzz' when the number is fizz and buzz" do
    @fizzbuzz.say(51).should == "FizzBuzz"
    @fizzbuzz.say(53).should == "FizzBuzz"
  end
end

