require '.\fizzbuzz'

describe Fizzbuzz do
	it "say 1" do
    	fizzbuzz = Fizzbuzz.new
    	fizzbuzz.say(1).should == "1" 
  	end
end
