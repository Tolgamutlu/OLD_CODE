using System;
using System.Linq;

namespace Task1._1
{
    class Program
    {
        static void Main(string[] args)
        {
            int average()
            {
                int[] arr = { 1, 2, 3, 4, 5, 17, 20 };
                return arr.Sum() / arr.Length; 
            }

            Console.WriteLine(average());

            if (average() < 10)
            {
                Console.WriteLine("SINGLE DIGITS");
            }
            else if (average() >= 10)
            {
                Console.WriteLine("DOUBLE DIGITS");
            }
        }
    }
}
