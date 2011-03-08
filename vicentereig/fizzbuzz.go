package gobuzz

import (
  "fmt"
)

func FizzBuzz() {
  for i:=1; i<101; i++ {
    if i % 5 == 0 && i % 3 == 0 {
      fmt.Printf("FizzBuzz!\n")
    } else if i % 3 == 0 {
      fmt.Printf("Fizz!\n")
    } else if i % 5 == 0 {
      fmt.Printf("Buzz!\n")
    } else {
      fmt.Printf("%d!\n", i)
    }
  }
}
