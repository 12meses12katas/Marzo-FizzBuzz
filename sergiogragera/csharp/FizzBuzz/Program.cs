using System;
using System.Collections.Generic;

namespace FizzBuzz
{
    public class Program
    {
        private static readonly Dictionary<int, string> FunnyNumbers = new Dictionary<int, string>{{3, "Fizz"}, {5, "Buzz"}};
        private const int MIN_NUMBER = 1;
        private const int MAX_NUMBER = 100;

        static void Main(string[] args)
        {
            Console.Write(ReciteNumbers(1, 18));
        }

        public static string ReciteNumbers(int from, int to)
        {
            var fromNumber = Math.Max(MIN_NUMBER, from);
            var toNumber = Math.Min(MAX_NUMBER, Math.Max(to, fromNumber));

            if (fromNumber == toNumber)
                return null;

            var recite = "";
            for (var i = fromNumber; i <= toNumber; i++)
                recite += String.Format("{0}{1}", GetNextNumber(i), Environment.NewLine);

            return recite;
        }

        private static string GetNextNumber(int i)
        {
            var nextNumber = "";

            foreach (var funnyNumber in FunnyNumbers.Keys)
                if (HasFunnyNumber(i, funnyNumber) || IsDivisibleByFunnyNumber(i, funnyNumber))
                    nextNumber += FunnyNumbers[funnyNumber];

            if (String.IsNullOrEmpty(nextNumber))
                nextNumber = i.ToString();
            
            return nextNumber;
        }

        private static bool IsDivisibleByFunnyNumber(int number, int funnyNumber)
        {
            return number%funnyNumber == 0;
        }

        private static bool HasFunnyNumber(int number, int funnyNumber)
        {
            return number.ToString().Contains(funnyNumber.ToString());
        }
    }
}
