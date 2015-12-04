using System;
using System.IO;
using System.Text;

namespace SofthemeTest
{
    public class Test1
    {
        private string f_fileContent;
        private StringBuilder f_result;

        public Test1()
        {
            try
            {
                using (StreamReader streamReader = new StreamReader("INPUT.txt"))
                    f_fileContent = streamReader.ReadToEnd();
            }
            catch (FileNotFoundException exception)
            {
                Console.WriteLine(exception.Message);
            }

            f_result = new StringBuilder();
        }

        public void CountNumbres()
        {
            if (f_fileContent == null)
            {
                Console.WriteLine("File INPUT.txt was not read!");
                return;
            }
            if (f_fileContent.Length > 100)
            {
                Console.WriteLine("Count of numbers is more than 100!");
                return;
            }

            int counter = 0;

            foreach (char word in f_fileContent)
            {
                if (int.Parse(word.ToString()) == 1)
                {
                    f_result.Append(1);
                    counter++;
                }
            }

            Console.WriteLine("Count of 1: {0}", counter);
        }

        public void WriteToFile()
        {
            try
            {
                using (StreamWriter streamWriter = new StreamWriter("OUTPUT.txt"))
                {
                    streamWriter.Write(f_result);
                }
            }
            catch (FileNotFoundException exception)
            {
                Console.WriteLine(exception.Message);
            }


            Console.WriteLine("Information was written to file OUTPUT.txt");
        }
    }
}
