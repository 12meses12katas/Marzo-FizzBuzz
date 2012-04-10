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

  	it "say 15" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(15).should == "FizzBuzz" 
  	end

  	it "say 3 div" do
  		[9, 12, 18, 33, 36, 39, 42, 48, 63, 66, 69, 72, 78, 81, 84, 87, 93, 96, 99].each do | number | 
  			fizzbuzz = Fizzbuzz.new
  			fizzbuzz.say(number).should == "Fizz" 
    	end
  	end

  	it "say 5 div" do
  		[10, 20, 25, 40, 50, 55, 65, 70, 80, 85, 95, 100].each do | number | 
  			fizzbuzz = Fizzbuzz.new
  			fizzbuzz.say(number).should == "Buzz" 
    	end
  	end

  	it "say 3 & 5 div" do
  		[30, 45, 60, 75, 90].each do | number | 
  			fizzbuzz = Fizzbuzz.new
  			fizzbuzz.say(number).should == "FizzBuzz" 
    	end
  	end

  	it "Fizz" do
    	[13, 23, 31, 32, 34, 37, 38, 43, 73, 83].each do | number | 
  			fizzbuzz = Fizzbuzz.new
  			fizzbuzz.say(number).should == "Fizz" 
    	end
  	end  

  	it "Buzz" do
    	[52, 56, 58, 59].each do | number | 
  			fizzbuzz = Fizzbuzz.new
  			fizzbuzz.say(number).should == "Buzz" 
    	end
  	end  	
end
