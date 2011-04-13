def fizz? number
  (number%3 == 0) || (number.to_s.include?"3")
end

def buzz? number
  (number%5 == 0)  || (number.to_s.include?"5")
end

def fizzbuzz? number
  fizz?(number) && buzz?(number)
end

def output_for_number number
  output = ""
  output << "Fizz" if fizz? number
  output << "Buzz" if buzz? number
  output << "?" if fizzbuzz? number
  output << number.to_s if output.empty?
  output
end

def fizzbuzz
  (1..100).inject("") { |result, number| result << output_for_number(number) << "\n"  }
end