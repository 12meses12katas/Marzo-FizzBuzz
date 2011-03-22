require File.dirname(__FILE__) + "/fizzbuzz.rb"

describe "fizzbuzz" do
  
  NEW_LINE_SEPARATOR = "\n"
  
  def lines string
    string.split(NEW_LINE_SEPARATOR)
  end
  
  def number_line_for_number number
    number-1
  end
  
  it "must return 100 lines" do
    lines(fizzbuzz).count.should == 100
  end
  
  it "must return 1 and 2 in the first two lines" do
    lines(fizzbuzz)[number_line_for_number(1)].should == "1"
    lines(fizzbuzz)[number_line_for_number(2)].should == "2"
  end

  it "must include 'Fizz' when line is for number 3" do
    lines(fizzbuzz)[number_line_for_number(3)].should include "Fizz"
  end
  
  (1..33).each do |base|
    number = base*3
    it "must include 'Fizz' when line is for #{number}" do
      lines(fizzbuzz)[number_line_for_number(number)].should include "Fizz"
    end
  end
  
  it "must include 'Buzz' when line is for number 5" do
    lines(fizzbuzz)[number_line_for_number(5)].should include "Buzz"
  end
  
  (1..20).each do |base|
    number = base*5
    it "must include 'Buzz' when line is for #{number}" do
      lines(fizzbuzz)[number_line_for_number(number)].should include "Buzz"
    end
  end
  
  it "must include 'Fizz' when line is for a number including a 3" do
    lines(fizzbuzz)[number_line_for_number(43)].should include "Fizz"
    lines(fizzbuzz)[number_line_for_number(31)].should include "Fizz"
  end
  
  it "must include 'Buzz' when line is for a number including a 5" do
    lines(fizzbuzz)[number_line_for_number(57)].should include "Buzz"
  end
end