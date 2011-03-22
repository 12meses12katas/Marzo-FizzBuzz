using FizzBuzz;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace FizzBuzzTestProject
{
    [TestClass]
    public class UnitTest
    {
        [TestMethod]
        public void ReciteFiveFirst()
        {
            var recite = Program.ReciteNumbers(-4, 5);
            var expectedRecite = string.Format("{1}{0}{2}{0}{3}{0}{4}{0}{5}{0}", System.Environment.NewLine, 1, 2,
                                               "Fizz", 4, "Buzz");
            Assert.AreEqual(recite, expectedRecite);
        }

        [TestMethod]
        public void ReciteEndsWithBuzz()
        {
            var recite = Program.ReciteNumbers(50, 55);
            StringAssert.EndsWith(recite, string.Format("{0}{1}", "Buzz", System.Environment.NewLine));
        }

        [TestMethod]
        public void ReciteStartWithBuzz()
        {
            var recite = Program.ReciteNumbers(50, 55);
            StringAssert.StartsWith(recite, string.Format("{0}{1}", "Buzz", System.Environment.NewLine));
        }

        [TestMethod]
        public void ReciteIsNull()
        {
            var recite = Program.ReciteNumbers(-5, 0);
            Assert.IsTrue(string.IsNullOrEmpty(recite));
        }
    }
}
