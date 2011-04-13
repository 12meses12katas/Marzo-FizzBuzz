package gobuzz

import (
  "strconv"
)

func FizzBuzz() [100]string {
  numbers := [100]string{}
  fizzOrBuzzOrFizzBuzzOrNumber := ""
  for i:=1; i<101; i++ {
    if i % 5 == 0 && i % 3 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "FizzBuzz"
    } else if i % 3 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "Fizz"
    } else if i % 5 == 0 {
      fizzOrBuzzOrFizzBuzzOrNumber = "Buzz"
    } else {
      fizzOrBuzzOrFizzBuzzOrNumber = strconv.Itob(i,10)
    }
    numbers[i-1] = fizzOrBuzzOrFizzBuzzOrNumber
  }
  return numbers
}
