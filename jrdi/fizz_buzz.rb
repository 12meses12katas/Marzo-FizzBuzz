require 'rspec'

def fizz_buzz(integer)
	return "FizzBuzz" if integer.fizz? && integer.buzz?
	return "Fizz" if integer.fizz?
	return "Buzz" if integer.buzz?
	integer
end

class Fixnum
	def fizz?
		divisible_by?(3) or self.to_s.match(/3/)
	end

	def buzz?
		divisible_by?(5) or self.to_s.match(/5/)
	end

	def divisible_by?(integer)
		self % integer == 0
	end
end

100.times {|i| puts fizz_buzz(i+1)}

TESTCASES = {
	1 => 1,
	2 => 2,
	3 => "Fizz",
	4 => 4,
	5 => "Buzz",
	6 => "Fizz",
	7 => 7,
	8 => 8,
	9 => "Fizz",
	10 => "Buzz",
	11 => 11,
	12 => "Fizz",
	13 => "Fizz",
	14 => 14,
	15 => "FizzBuzz",
	16 => 16,
	17 => 17,
	18 => "Fizz",
	19 => 19,
	20 => "Buzz",
	21 => "Fizz",
	22 => 22,
	23 => "Fizz",
	24 => "Fizz",
	25 => "Buzz",
	26 => 26,
	27 => "Fizz",
	28 => 28,
	29 => 29,
	30 => "FizzBuzz",
	31 => "Fizz",
	32 => "Fizz",
	33 => "Fizz",
	34 => "Fizz",
	35 => "FizzBuzz",
	36 => "Fizz",
	37 => "Fizz",
	38 => "Fizz",
	39 => "Fizz",
	40 => "Buzz",
	41 => 41,
	42 => "Fizz",
	43 => "Fizz",
	44 => 44,
	45 => "FizzBuzz",
	46 => 46,
	47 => 47,
	48 => "Fizz",
	49 => 49,
	50 => "Buzz",
	51 => "FizzBuzz",
	52 => "Buzz",
	53 => "FizzBuzz",
	54 => "FizzBuzz",
	55 => "Buzz",
	56 => "Buzz",
	57 => "FizzBuzz",
	58 => "Buzz",
	59 => "Buzz",
	60 => "FizzBuzz",
	61 => 61,
	62 => 62,
	63 => "Fizz",
	64 => 64,
	65 => "Buzz",
	66 => "Fizz",
	67 => 67,
	68 => 68,
	69 => "Fizz",
	70 => "Buzz",
	71 => 71,
	72 => "Fizz",
	73 => "Fizz",
	74 => 74,
	75 => "FizzBuzz",
	76 => 76,
	77 => 77,
	78 => "Fizz",
	79 => 79,
	80 => "Buzz",
	81 => "Fizz",
	82 => 82,
	83 => "Fizz",
	84 => "Fizz",
	85 => "Buzz",
	86 => 86,
	87 => "Fizz",
	88 => 88,
	89 => 89,
	90 => "FizzBuzz",
	91 => 91,
	92 => 92,
	93 => "Fizz",
	94 => 94,
	95 => "Buzz",
	96 => "Fizz",
	97 => 97,
	98 => 98,
	99 => "Fizz",
	100 => "Buzz"
}

describe "Fizz Buzz" do
	TESTCASES.each do |integer, output|
		it "should return #{output} on #{integer}" do
			fizz_buzz(integer).should == output
		end
	end
end