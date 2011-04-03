require 'fizzbuzz'

describe "FizzBuzz" do
  context "Un numero es Fizz si es divisible por 3." do
    [3,6,9,12].each do |n|
      it "El #{n} es 'Fizz'" do
          n.fizzbuzz.should == "Fizz"
      end
    end
  end
    
    context "Un numero es Fizz si contiene algun 3." do
      [63,333,5986545543].each do |n|
        it "El #{n} es 'Fizz'" do
            n.fizzbuzz.should == "Fizz"
        end
      end
    end
    context "Un numero es Buzz si es divisible por 5." do
      [5,10,20,25].each do |n|
        it "El #{n} es 'Buzz'" do
            n.fizzbuzz.should == "Buzz"
        end
      end
    end
    context "Un numero es FizzBuzz si es divisible por 3 y 5." do
      [15,30,45,60].each do |n|
        it "El #{n} es 'FizzBuzz'" do
            n.fizzbuzz.should == "FizzBuzz"
        end
      end
    end
end