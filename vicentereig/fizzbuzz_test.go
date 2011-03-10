package gobuzz

import (
  "testing"
  "strings"
  "strconv"
)

func TestFizzBuzz(t *testing.T) {
  var numbers = FizzBuzz()
  if len(numbers) != 100 {
    t.Errorf("100 items expected.")
  }
  var number int
  for i:=0; i<len(numbers); i++ {
    number = i+1
    if number % 5 == 0 && number % 3 == 0 && !strings.Contains(numbers[i], "FizzBuzz") {
      t.Errorf("Expecting FizzBuzz for %d. Found %s.", number, numbers[i])
    } else if number % 5 == 0 && !strings.Contains(numbers[i], "Buzz") {
      t.Errorf("Expecting Buzz for %d. Found %s.", number, numbers[i])
    } else if number % 3 == 0 && !strings.Contains(numbers[i], "Fizz") {
      t.Errorf("Expecting Fizz for %d. Found %s.", number, numbers[i])
    } else if number % 5 != 0 && number % 3 != 0 && !strings.Contains(numbers[i], strconv.Itob(number,10)) {
      t.Errorf("Expecting %s at %d. Found %s.", strconv.Itob(number, 10), i, numbers[i])
    }
  }
}
