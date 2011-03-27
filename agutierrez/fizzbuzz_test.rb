require './fizzbuzz'

describe "testing counter" do

  String_multiples_of_three_r1 = "1 2 fizz 4 buzz fizz"
  String_multiples_of_five_r1 = String_multiples_of_three_r1 + " 7 8 fizz buzz"
  String_fiveteen_r1 = String_multiples_of_five_r1 + " 11 fizz 13 14 fizzbuzz"
  String_acceptance_test_r1 = String_fiveteen_r1 + " 16 17 fizz 19 buzz fizz 22 23 fizz buzz 26 fizz 28 29 fizzbuzz 31 32 fizz 34 buzz fizz 37 38 fizz buzz 41 fizz 43 44 fizzbuzz 46 47 fizz 49 buzz fizz 52 53 fizz buzz 56 fizz 58 59 fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz 73 74 fizzbuzz 76 77 fizz 79 buzz fizz 82 83 fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz"
  String_multiples_of_three_r2 = "1 2 fizz 4 buzz fizz"
  String_multiples_of_five_r2 = String_multiples_of_three_r2 + " 7 8 fizz buzz"
  String_threes_r2 = String_multiples_of_five_r2 + " 11 fizz fizz"
  String_fives_r2 = String_threes_r2 + " 14 fizz 16 17 fizz 19 buzz fizz 22 fizz fizz buzz"
  String_three_and_five_r2 = String_fives_r2 + " 26 fizz 28 29 fizzbuzz"
  String_acceptance_test_r2 = String_three_and_five_r2 + " fizz fizz fizz fizz fizz fizz fizz fizz fizz buzz 41 fizz fizz 44 fizz 46 47 fizz 49 buzz fizz buzz fizz fizz buzz buzz fizz buzz buzz fizzbuzz 61 62 fizz 64 buzz fizz 67 68 fizz buzz 71 fizz fizz 74 fizz 76 77 fizz 79 buzz fizz 82 fizz fizz buzz 86 fizz 88 89 fizzbuzz 91 92 fizz 94 buzz fizz 97 98 fizz buzz"

  Data_kata = [
    ["should return nil if number is 0", 0, nil],
    ["should return '1' if number is 0", 1, "1"],
    ["should return '1 2' if number is 2", 2, "1 2"],
    ["should return fizz for three", 3, "1 2 fizz"],
    ["should return buzz for five", 5, "1 2 fizz 4 buzz"],
    ["should return fizz for multiples of three", 6, String_multiples_of_three_r1],
    ["should return buzz for multiples of five", 10, String_multiples_of_five_r1],
    ["should return fizzbuzz for fiveteen", 15, String_fiveteen_r1],
    ["acceptance test", 100, String_acceptance_test_r1]
  ]

  Data_kata2 = [
    ["should return nil if number is 0", 0, nil],
    ["should return '1' if number is 0", 1, "1"],
    ["should return '1 2' if number is 2", 2, "1 2"],
    ["should return fizz for three", 3, "1 2 fizz"],
    ["should return buzz for five", 5, "1 2 fizz 4 buzz"],
    ["should return fizz for multiples of three", 6, String_multiples_of_three_r1],
    ["should return buzz for multiples of five", 10, String_multiples_of_five_r1],
    ["should return fizz on every threes", 13, String_threes_r2 ],
    ["should return buzz on every fives", 25, String_fives_r2],
    ["should return fizzbuzz on multiples of 3 and 5", 30, String_three_and_five_r2],
    ["acceptance test", 100, String_acceptance_test_r2]
  ]

  describe "set of rules 1" do

    before(:each) do
      @fb = Fizzbuzz.new(1)
    end

    Data_kata.each do |testdata|

      it testdata[0] do
        @fb.list(testdata[1]).should == testdata[2]
      end
    end # each
  end # set of rules 1

    describe "set of rules 2" do

    before(:each) do
      @fb = Fizzbuzz.new(2)
    end

    Data_kata2.each do |testdata|

      it testdata[0] do
        @fb.list(testdata[1]).should == testdata[2]
      end
    end # each
  end # set of rules 1
end # Kata