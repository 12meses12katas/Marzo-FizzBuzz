import java.io.PrintStream

class ExtendedInt(n: Int) {
  def divisibleBy(divisor: Int) = n % divisor == 0
  def notDivisibleBy(divisor: Int) = !divisibleBy(divisor)
}

class FizzBuzz {
  implicit def extendInt(n: Int) = new ExtendedInt(n)

  def printSequence(out: PrintStream) = {
    (1 to 100).foreach(n => out.println(sayOnNumber(n)))
  }

  def sayOnNumber(number: Int): String = {
    number match {
      case n if (n divisibleBy 3) && (n notDivisibleBy 5) => "Fizz"
      case n if (n divisibleBy 5) && (n notDivisibleBy 3) => "Buzz"
      case n if (n divisibleBy 3) && (n divisibleBy 5) => "FizzBuzz"
      case _ => number.toString
    }
  }
}