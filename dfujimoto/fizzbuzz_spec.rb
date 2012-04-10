require '.\fizzbuzz'

describe Fizzbuzz do
	it "say 1" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(1).should == "1" 
  	end

  	it "say 2" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(2).should == "2" 
  	end

  	it "say 3" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(3).should == "Fizz" 
  	end

  	it "say 4" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(4).should == "4" 
  	end

  	it "say 5" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(5).should == "Buzz" 
  	end

  	it "say 6" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(6).should == "Fizz" 
  	end
end
