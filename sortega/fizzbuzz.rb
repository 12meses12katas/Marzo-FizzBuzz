(1..100).each do |n|
  text = ""
  text = text + "Fizz" if n % 3 == 0
  text = text + "Buzz" if n % 5 == 0
  text = n if text == ""
  print text, "\n"
end
