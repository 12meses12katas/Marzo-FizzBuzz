package gobuzz

import (
  "testing"
)


func TestFizzBuzz(t *testing.T) {
  var numbers = FizzBuzz()
  if len(numbers) != 100 {
    t.Errorf("100 items expected.")
  }
}
