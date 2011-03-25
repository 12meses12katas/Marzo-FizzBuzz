//KATA
def fizz = { it%3 == 0 || Integer.toString(it).contains("3") ?"Fizz":"" }

def buzz = { it%5 == 0 || Integer.toString(it).contains("5") ?"Buzz":"" }

def sayFizzBuzz = {
    result = fizz(it) + buzz(it)
    result == ""?it:result
}


//TESTS
assert 1 == sayFizzBuzz(1)
assert "Fizz" == sayFizzBuzz(3)
assert "Buzz" == sayFizzBuzz(5)
assert "FizzBuzz" == sayFizzBuzz(15)
assert "Fizz" == sayFizzBuzz(13)
assert "FizzBuzz" == sayFizzBuzz(35)
assert "FizzBuzz" == sayFizzBuzz(53)
assert "FizzBuzz" == sayFizzBuzz(54)
assert "Buzz" == sayFizzBuzz(58)