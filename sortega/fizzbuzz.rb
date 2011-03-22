def noise(n, digit, sound)
  if (n % digit == 0) || (n.to_s.include? digit.to_s) then
    return sound
  else
    return ""
  end
end

(1..100).each do |n|
  fizz = noise(n, 3, "Fizz")
  buzz = noise(n, 5, "Buzz")
  if fizz.empty? and buzz.empty? then
    text = n
  else
    text = fizz + buzz;
    text += "?" unless fizz.empty? or buzz.empty?
  end
  print text, "\n"
end
