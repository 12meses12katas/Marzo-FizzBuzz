package gobuzz

import (
  "testing"
  "strings"
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
      t.Errorf("Expecting FizzBuzz at i=%d. Found %s.", i, numbers[i])
    } else if number % 5 == 0 && !strings.Contains(numbers[i], "Buzz") {
      t.Errorf("Expecting Buzz at i=%d. Found %s.", i, numbers[i])
    } else if number % 3 == 0 && !strings.Contains(numbers[i], "Fizz") {
      t.Errorf("Expecting Fizz at i=%d. Found %s.", i, numbers[i])
    } else if !strings.Contains(numbers[i], string(number+49)) {
      t.Errorf("Expecting %s at i=%d. Found %s.", numbers[i], i, string(number+49))
    }
  }
}
