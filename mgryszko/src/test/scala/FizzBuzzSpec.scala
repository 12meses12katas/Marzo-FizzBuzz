import java.io.{PrintStream, ByteArrayOutputStream}
import org.specs2.matcher.DataTables
import org.specs2.mutable._

class FizzBuzzSpec extends SpecificationWithJUnit with DataTables {
  "fizzBuzz" should {
    val fizzBuzz = new FizzBuzz

    "generate a complete FizzBuzz sequence" in {
      val out = new ByteArrayOutputStream
      fizzBuzz.printSequence(new PrintStream(out))

      def responseForNumber(n: Int) = (out.toString.lines.toList)(n - 1)

      "n" | "response" |>
        1 ! "1" |
        2 ! "2" |
        3 ! "Fizz" |
        4 ! "4" |
        5 ! "Buzz" |
        6 ! "Fizz" |
        7 ! "7" |
        8 ! "8" |
        9 ! "Fizz" |
        10 ! "Buzz" |
        13 ! "Fizz" |
        15 ! "FizzBuzz" |
        20 ! "Buzz" |
        23 ! "Fizz" |
        30 ! "FizzBuzz" |
        31 ! "Fizz" |
        35 ! "FizzBuzz" |
        38 ! "Fizz" |
        51 ! "FizzBuzz" |
        52 ! "Buzz" |
        53 ! "FizzBuzz" |
        54 ! "FizzBuzz" |
        55 ! "Buzz" |
        57 ! "FizzBuzz" |
        59 ! "Buzz" |
        98 ! "98" |
        99 ! "Fizz" |
        100 ! "Buzz" | { (n, response) => {
          responseForNumber(n) must_== response
        } }
    }
  }
}