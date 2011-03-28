require 'fizzbuzz'
describe "Kata FizzBuzz" do
    it "Un numero es Fizz si es divisible entre 3" do
       [3,6,9,12].each do |n|
         n.fizzbuzz.should == "Fizz"
       end
    end
    it "Un numero es Buzz si es divisible entre 5" do
       [5,10,20,25].each do |n|
         n.fizzbuzz.should == "Buzz"
       end
    end
    
    it "Un numero es FizzBuzz si es divisible entre 3 y 5" do
      [15,30].each do |n|
        n.fizzbuzz.should == "FizzBuzz"
      end
    end
      
end