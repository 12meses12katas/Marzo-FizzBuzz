require "./fizzbuzz.rb"

describe Fizzbuzz do

	before(:each) do
		@fizzbuzz = Fizzbuzz.new()
	end

it "1 devuelve 1" do
	@fizzbuzz.convertir(1).should=="1"
end

it "2 devuelve 2" do
	@fizzbuzz.convertir(2).should=="2"
end

it "3 devuelve fizz" do
	@fizzbuzz.convertir(3).should=="fizz"
end

it "4 devuelve 4" do
	@fizzbuzz.convertir(4).should=="4"
end

it "5 devuelve buzz" do
	@fizzbuzz.convertir(5).should=="buzz"
end

it "6 devuelve fizz" do
	@fizzbuzz.convertir(6).should=="fizz"
end

it "7 devuelve 7" do
	@fizzbuzz.convertir(7).should=="7"
end

it "8 devuelve 8" do
	@fizzbuzz.convertir(8).should=="8"
end

it "9 devuelve fizz" do
	@fizzbuzz.convertir(9).should=="fizz"
end

it "10 devuelve buzz" do
	@fizzbuzz.convertir(10).should=="buzz"
end

it "11 devuelve 11" do
	@fizzbuzz.convertir(11).should=="11"
end

it "12 devuelve fizz" do
	@fizzbuzz.convertir(12).should=="fizz"
end

it "13 devuelve 13" do
	@fizzbuzz.convertir(13).should=="fizz"
end

it "14 devuelve 14" do
	@fizzbuzz.convertir(14).should=="14"
end

it "15 devuelve fizzbuzz" do
	@fizzbuzz.convertir(15).should=="fizzbuzz"
end

it "50 devuelve buzz" do
	@fizzbuzz.convertir(50).should=="buzz"
end

it "83 devuelve fizz" do
	@fizzbuzz.convertir(83).should=="fizz"
end



end