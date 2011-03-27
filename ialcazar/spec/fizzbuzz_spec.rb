require 'fizzbuzz'
describe "FizzBuzz" do
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
end