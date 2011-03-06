require "fizzbuzz"

RSpec::Matchers.define :say do |expected|
  match do |actual|
    actual.play_fizzbuzz.to_s =~ /#{expected}/
  end
  failure_message_for_should do |actual|
    "expected #{actual} to say #{expected} but was #{actual.play_fizzbuzz}"
  end
  failure_message_for_should_not do |actual|
    "expected #{actual} not to say #{expected} but was #{actual.play_fizzbuzz}"
  end
end

describe "When playing fizzbuzz" do
  
  context "any multiple of 3" do
    50.times do 
      subject { rand(100)*3 }
      it { should be_fiz }
      it { should say(:Fizz) }
    end
  end
  
  describe "any multiple of 5" do
    50.times do 
      subject { rand(100)*5 }
      it { should be_buzz } 
      it { should say(:Buzz) }
    end
  end
  
  context "any multiple of 3 and 5 should" do
    50.times do 
      subject { rand(100)*5*3 }
      it { should be_fiz }
      it { should be_buzz }
      it { should say(:FizzBuzz)}
    end
  end
  
  context "numbers which are not multiples of 3" do
    50.times do 
      subject { rand(100)*3 + rand(2) + 1 }
      it { should_not be_fiz }
      it { should_not say(:fiz)}
    end
  end

  context "numbers which are not multiples of 5" do
    50.times do 
      subject { rand(100)*5 + rand(4) + 1 }
      it { should_not be_buzz }
      it { should_not say(:Buzz)}
    end
  end
  
  context "numbers which are not multiples of 5 or 3" do
    50.times do 
      subject { rand(100)*5*3 + rand(2) + 1 }
      it { should say(subject)}
    end
  end
  
  context "with the list of FizzBuzz up to 100" do
    subject { fizzbuzzs_up_to(100) }
    
    it { should have(100).items }
    it "the 1st number should be 1" do
      subject.first.should == 1
    end
    it "the 3rd number should be Fizz" do
      subject[2].should == "Fizz"
    end
    it "the 5th number should be Buzz" do
      subject[4].should == "Buzz"
    end
    it "the 15th number should be Buzz" do
      subject[14].should == "FizzBuzz"
    end
  end
end