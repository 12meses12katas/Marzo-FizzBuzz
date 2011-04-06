using System;
using System.Collections.Generic;
using System.Text;
using FizzBuzz.Logic;
namespace FizzBuzz.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            FizzBuzzResolver f = new FizzBuzzResolver();
            for (int i = 0; i <= 100; i++)
                Console.WriteLine(f.GetFizzBuzz(i));

            Console.WriteLine("Test Ended. Press Enter to continue...");
            Console.Read();
        }
    }
}
