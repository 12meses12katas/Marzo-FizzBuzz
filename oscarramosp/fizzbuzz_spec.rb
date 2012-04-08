require "./fizzbuzz.rb"

describe FizzBuzz do

  before(:each) do
    @fizzbuzz = FizzBuzz.new
  end

  context("Stage 1") do
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

  context("Stage 2") do
    it "si un numero contiene el numero 3, debe imprimir Fizz" do
      @fizzbuzz.obtener_valor_imprimir(137).should == "Fizz"
    end

    it "si un numero contiene el numero 5, debe imprimir Buzz" do
      @fizzbuzz.obtener_valor_imprimir(157).should == "Buzz"
    end

    it "si contiene el 3 y el 5, debe imprimir FizzBuzz" do
      @fizzbuzz.obtener_valor_imprimir(358).should == "FizzBuzz"
    end
  end

  context("Prueba del metodo general") do
    it "imprimir Fizz si el numero contiene o es multiplo de 3, imprimir Buzz si el numero contiene o es multiplo de 5,
     imprimir FizzBuzz si contiene o es multiplo de ambos" do
      @fizzbuzz.imprimir_resultados
    end
  end

end