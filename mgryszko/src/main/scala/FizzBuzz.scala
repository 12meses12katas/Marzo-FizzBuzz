import java.io.PrintStream

class FizzyBuzzyInt(i: Int) {
  def isFizzy = divisibleBy(3) || contains(3)
  def isNotFizzy = !isFizzy
  def isBuzzy = divisibleBy(5) || contains(5)
  def isNotBuzzy = !isBuzzy

  private def divisibleBy(divisor: Int) = i % divisor == 0
  private def contains(n: Int) = i.toString contains n.toString
}

class FizzBuzz {
  implicit def extendInt(n: Int) = new FizzyBuzzyInt(n)

  def printSequence(out: PrintStream) = {
    (1 to 100).foreach(n => out.println(sayOnNumber(n)))
  }

  private def sayOnNumber(number: Int): String = {
    number match {
      case n if (n isFizzy) && (n isNotBuzzy) => "Fizz"
      case n if (n isBuzzy) && (n isNotFizzy) => "Buzz"
      case n if (n isFizzy) && (n isBuzzy) => "FizzBuzz"
      case _ => number.toString
    }
  }
}