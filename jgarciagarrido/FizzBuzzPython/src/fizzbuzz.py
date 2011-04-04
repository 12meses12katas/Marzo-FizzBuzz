
class FizzBuzzNumber:
    def say(self, turn):
        if (turn % 15) == 0:
            return "FizzBuzz"
        elif (turn % 3) == 0:
            return "Fizz"
        elif (turn % 5) == 0:
            return "Buzz"
        else:
            return turn