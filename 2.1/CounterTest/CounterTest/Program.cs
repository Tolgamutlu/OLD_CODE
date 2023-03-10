using System;

namespace CounterTest
{
    class Program
    {
        //PRINT COUNTERS
        static void PrintCounters(Counter[] counters)
        {

            foreach (Counter c in counters)
            {
                Console.WriteLine("{0} has {1}", c.Name, c.Ticks);
            }
        }

        //MAIN METHOD
        static void Main(string[] args)
        {
            Counter[] myCounters = new Counter[3];
            myCounters[0] = new Counter("Counter 1");
            myCounters[1] = new Counter("Counter 2");
            myCounters[2] = myCounters[0];

            for (int i = 0; i < 4; i++)
            {
                myCounters[0].Increment();
            }

            for (int i = 0; i < 9; i++)
            {
                myCounters[1].Increment();
            }

            PrintCounters(myCounters);

            myCounters[2].Reset();
            Console.WriteLine("\n");

            PrintCounters(myCounters);
        }
    }
}
