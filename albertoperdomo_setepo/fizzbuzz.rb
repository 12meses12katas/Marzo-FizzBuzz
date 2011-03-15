module FizzBuzz
  extend self

  def go!
    (1..100).each do |i|
      fizzed = i % 3 == 0 || i.to_s.include?("3")
      buzzed = i % 5 == 0 || i.to_s.include?("5")

      print "Fizz" if fizzed
      print "Buzz" if buzzed
      print i unless fizzed or buzzed
      puts
    end
  end
end

if __FILE__ == $0
  require 'minitest/autorun'

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
Fizz
14
FizzBuzz
16
17
Fizz
19
Buzz
Fizz
22
Fizz
Fizz
Buzz
26
Fizz
28
29
FizzBuzz
Fizz
Fizz
Fizz
Fizz
FizzBuzz
Fizz
Fizz
Fizz
Fizz
Buzz
41
Fizz
Fizz
44
FizzBuzz
46
47
Fizz
49
Buzz
FizzBuzz
Buzz
FizzBuzz
FizzBuzz
Buzz
Buzz
FizzBuzz
Buzz
Buzz
FizzBuzz
61
62
Fizz
64
Buzz
Fizz
67
68
Fizz
Buzz
71
Fizz
Fizz
74
FizzBuzz
76
77
Fizz
79
Buzz
Fizz
82
Fizz
Fizz
Buzz
86
Fizz
88
89
FizzBuzz
91
92
Fizz
94
Buzz
Fizz
97
98
Fizz
Buzz
