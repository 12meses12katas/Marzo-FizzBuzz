using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using NUnit.Framework;
using FizzBuzz;

namespace TestFizzBuzz
{
    [TestFixture()]
    public class UnitTest
    {
        [Test]
        public void TestConvertToRoman()
        {

            string input = "1";
            string expected = "1";
            string result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "2";
            expected = "2";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "3";
            expected = "Fizz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "4";
            expected = "4";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "5";
            expected = "Buzz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "6";
            expected = "Fizz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "7";
            expected = "7";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "8";
            expected = "8";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "9";
            expected = "Fizz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "10";
            expected = "Buzz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "11";
            expected = "11";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "12";
            expected = "Fizz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "13";
            expected = "13";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "14";
            expected = "14";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "15";
            expected = "FizzBuzz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "16";
            expected = "16";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "17";
            expected = "17";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "18";
            expected = "Fizz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "19";
            expected = "19";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));

            input = "20";
            expected = "Buzz";
            result = FizzBuzz.FizzBuzz.GetFizzBuzz(input);
            Assert.AreEqual(expected, result);

            Console.WriteLine(String.Format("Test correct, input: {0}; result: {1}; expected: {2};", input, result, expected));
        }
    }
}
