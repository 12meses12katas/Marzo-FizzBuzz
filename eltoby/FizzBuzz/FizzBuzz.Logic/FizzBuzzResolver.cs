using System;
using System.Collections.Generic;
using System.Text;

namespace FizzBuzz.Logic
{
    public class FizzBuzzResolver
    {
        public string GetFizzBuzz(int number)
        {
            
            bool fizz = false;
            bool buzz = false;

            if (number % 3 == 0 || number.ToString().Contains("3"))
                fizz = true;
            if (number % 5 == 0 || number.ToString().Contains("5"))
                buzz = true;

            string result = string.Format("{0}{1}{2}",fizz?"Fizz":"",buzz?"Buzz":"",fizz && buzz?"?":"");           

            if (result == "")
                result = number.ToString();

            return result;
            
        }
    }
}
