package gobuzz

func FizzBuzz() [100]string {
  var numbers [100]string
  var fizzOrBuzzOrFizzBuzzOrNumber string
  for i:=1; i<101; i++ {
    if i % 5 == 0 && i % 3 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "FizzBuzz"
    } else if i % 3 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "Fizz"
    } else if i % 5 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "Buzz"
    } else {
      fizzOrBuzzOrFizzBuzzOrNumber = string(i)
    }
    numbers[i-1] = fizzOrBuzzOrFizzBuzzOrNumber
  }
  return numbers
}
