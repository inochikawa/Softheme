using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SofthemeTest
{
    class Program
    {
        static void Main(string[] args)
        {
            Test1 t1 = new Test1();

            t1.CountNumbres();
            t1.WriteToFile();

            Console.ReadKey();
        }
    }
}
