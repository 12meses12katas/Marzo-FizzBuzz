require "./fizzbuzz.rb"

describe FizzBuzz do

  before(:each) do
    @fizzbuzz = FizzBuzz.new
  end

  it "si es un numero multiplo de 3, debe imprimir Fizz" do
    @fizzbuzz.obtener_valor_imprimir(9).should == "Fizz"
  end

  it "si es un numero multiplo de 5, debe imprimir Buzz" do
    @fizzbuzz.obtener_valor_imprimir(25).should == "Buzz"
  end

  it "si es un numero multiplo de 3 y de 5, debe imprimir FizzBuzz" do
    @fizzbuzz.obtener_valor_imprimir(15).should == "FizzBuzz"
  end

end