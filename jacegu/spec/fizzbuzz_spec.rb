require 'spec_helper'

module FizzBuzz

  describe NumberList do
    context '#new' do
      it 'creates a fizzbuzz number for each listed number' do
        listed_numbers = [1, 2]
        listed_numbers.each{ |n| Number.should_receive(:new).with(n) }
        NumberList.new(listed_numbers)
      end
    end

    context 'when it is created' do
      let(:a_number){ 1 }
      let(:fizzbuzz_number){ double :fizzbuzz_number }
      let(:list){ NumberList.new([a_number]) }

      before do
        Number.stub(:new).with(a_number).and_return(fizzbuzz_number)
      end

      context '#elements' do
        it 'returns each fizzbuzz number of the list' do
          list.elements.should include(fizzbuzz_number)
        end
      end

      context '#print_to' do
        it 'outputs each fizzbuzz number to the given output' do
          output = double :output
          output.should_receive(:puts).with(fizzbuzz_number)
          list.print_to(output)
        end
      end
    end
  end

  RSpec::Matchers.define :have_fizzbuzz_value do |expected_value|
    match do |number|
      @fizzbuzz_value = Number.new(number).value
      @fizzbuzz_value == expected_value
    end

    description do |number|
      "have fizzbuzz value of #{expected_value} for #{number}"
    end

    failure_message_for_should do |number|
      "#{number} should have fizzbuzz value of #{expected_value} but was #{@fizzbuzz_value}"
    end
  end

  describe Number do
    context '#value' do
      context 'with numbers not multiple of 3 nor 5' do
        it{ 1.should have_fizzbuzz_value '1' }
        it{ 2.should have_fizzbuzz_value '2' }
        it{ 4.should have_fizzbuzz_value '4' }
      end

      context 'with numbers multiple of 3 but not 5' do
        it{  3.should have_fizzbuzz_value 'Fizz' }
        it{  6.should have_fizzbuzz_value 'Fizz' }
        it{ 27.should have_fizzbuzz_value 'Fizz' }
      end

      context 'with numbers multiple of 5 but not 3' do
        it{  5.should have_fizzbuzz_value 'Buzz' }
        it{ 10.should have_fizzbuzz_value 'Buzz' }
        it{ 40.should have_fizzbuzz_value 'Buzz' }
      end

      context 'with numbers multiple of 3 and 5' do
        it{ 15.should have_fizzbuzz_value 'FizzBuzz' }
        it{ 30.should have_fizzbuzz_value 'FizzBuzz' }
        it{ 45.should have_fizzbuzz_value 'FizzBuzz' }
      end

      context 'with numbers that contain a 3' do
        it{ 13.should have_fizzbuzz_value 'Fizz' }
        it{ 23.should have_fizzbuzz_value 'Fizz' }
        it{ 33.should have_fizzbuzz_value 'Fizz' }
      end

      context 'with numbers that contain a 5' do
        it{ 25.should have_fizzbuzz_value 'Buzz' }
        it{ 52.should have_fizzbuzz_value 'Buzz' }
        it{ 85.should have_fizzbuzz_value 'Buzz' }
      end
    end

    context '#to_s' do
      it 'returns the number value' do
        number = Number.new(35)
        fizzbuzz_value= 'the fizzbuzz value of the number'
        number.stub(:value).and_return(fizzbuzz_value)
        number.to_s.should == fizzbuzz_value
      end
    end
  end

end
