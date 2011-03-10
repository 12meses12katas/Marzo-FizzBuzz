require 'fizzbuzz'

describe "the method sayFizzBuzz" do
	context "given a number is divisible by 3" do
		[3, 6, 9, 12, 18, 33, 36, 39].each do | number | 
			it "like #{number}, will say 'Fizz'" do
				number.sayFizzBuzz.should == "Fizz"
			end
		end
	end
	context "given a number contains at least a digit '3'" do
		[334, 736, 37, 13, 138, 73737, 361, 397].each do | number | 
			it "like #{number}, will say 'Fizz'" do
				number.sayFizzBuzz.should == "Fizz"
			end
		end
	end
	context "given a number is divisible by 5" do
		[5, 10, 20, 25, 25, 40, 50, 80, 100].each do | number | 
			it "like #{number}, will say 'Buzz'" do
				number.sayFizzBuzz.should == "Buzz"
			end
		end
	end
	context "given a number contains at least one digit '5'" do
		[545, 251, 751, 524444, 56, 52, 1754, 2582, 257].each do | number | 
			it "like #{number}, will say 'Buzz'" do
				number.sayFizzBuzz.should == "Buzz"
			end
		end
	end
	context "given a number is neither Fizz neither Buzz" do
		[1, 2, 4, 7, 8, 14, 71, 77, 17, 97].each do | number | 
			it "like #{number}, will say '#{number}'" do
				number.sayFizzBuzz.should == "#{number}"
			end
		end
	end
	context "given a number is Fizz and Buzz" do
		[15, 30, 35, 45, 53, 60, 75, 90, 7375].each do | number | 
			it "like #{number}, will say 'FizzBuzz'" do
				number.sayFizzBuzz.should == "FizzBuzz"
			end
		end
	end
end
