module FizzBuzz
  class NumberList
    attr_reader :elements

    def initialize(numbers)
      @elements = numbers.map{ |n| Number.new(n) }
    end

    def print_to(output)
      @elements.each{ |e| output.puts(e) }
    end
  end

  class Number
    def initialize(number)
      @number = number
    end

    def value
      return 'FizzBuzz' if divisible_by?(3) and divisible_by?(5)
      return 'Fizz'     if divisible_by?(3) or  contains?(3)
      return 'Buzz'     if divisible_by?(5) or  contains?(5)
      @number.to_s
    end

    def to_s
      value
    end

    def contains?(number)
      @number.to_s.include?(number.to_s)
    end

    def divisible_by?(divisor)
      @number % divisor == 0
    end
  end
end
