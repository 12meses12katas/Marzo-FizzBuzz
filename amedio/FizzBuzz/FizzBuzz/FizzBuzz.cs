using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace FizzBuzz
{
    public class FizzBuzz
    {
        public static string GetFizzBuzz(string input)
        {
            string result = input;

            int inputInt = Convert.ToInt32(input);
            result = (inputInt % 3) == 0 ? "Fizz" : "";
            result += (inputInt % 5) == 0 ? "Buzz" : "";
            result = result == "" ? input : result;

            return result;
        }
    }
}
