using System;
using System.Collections.Generic;
using System.Text;

namespace FizzBuzz.Logic
{
    public class FizzBuzzResolver
    {
        public string GetFizzBuzz(int number)
        {
            string result = "";
            if (number % 3 == 0 || number.ToString().Contains("3"))
                result += "Fizz";
            if (number % 5 == 0 || number.ToString().Contains("5"))
                result += "Buzz";

            if (result == "")
                result = number.ToString();

            return result;
            
        }
    }
}
