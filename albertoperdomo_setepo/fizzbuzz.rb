require 'minitest/autorun'

module FizzBuzz
  extend self

  def go!
    (1..100).each do |i|
      print "Fizz" if i % 3 == 0
      print "Buzz" if i % 5 == 0
      print i unless i % 3 == 0 || i % 5 == 0
      puts
    end
  end

end

class FizzBuzzTest < MiniTest::Unit::TestCase
  def test_sample_output
    pipes = IO.pipe
    pid = fork do
      pipes[0].close
      STDOUT.reopen(pipes[1])
      FizzBuzz.go!
    end
  
    pipes[1].close
    Process.waitpid(pid)
    output = pipes[0].read

    sample = DATA.read
    assert_equal sample, output[0..(sample.size-1)]
  end
end



__END__
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
