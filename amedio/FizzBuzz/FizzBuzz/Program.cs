using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace FizzBuzz
{
    public class Program
    {
        static void Main(string[] args)
        {
            StreamWriter f = new StreamWriter("fizzbuzz.txt");

            for (int i = 1; i <= 100; i++)
            {
                f.WriteLine(FizzBuzz.GetFizzBuzz(i.ToString()));
                f.Flush();
            }

            f.Close();
        }
    }
}
