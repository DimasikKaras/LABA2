using System;

class Module28
{
    static int proverka(long num)
    {
        long a = Math.Abs(num);
        int res = 0;
        
        if (a == 0)
        {
            return 1;
        }
        
        while (a > 0)
        {
            int promej = (int)(a % 10);
            if (promej % 2 == 0)
            {
                res++;
            }
            a /= 10;
        }
        return res;
    }

    static void vivod(long num, int res)
    {
        Console.WriteLine($"Число {num} имеет {res} чётных чисел");
    }

    static bool TryReadNumber(out long num, bool firstvvod)
    {
        if (firstvvod)
        {
            Console.Write("Введите число (для завершения введите любое нечисленное значение): ");
        }
        string input = Console.ReadLine();
        return long.TryParse(input, out num);
    }

    static void Main()
    {
        bool firstvvod = true;
        while (true)
        {
            long num;
            if (!TryReadNumber(out num, firstvvod))
                break;
                
            firstvvod = false;
            int res = proverka(num);
            vivod(num, res);
        }
    }
}
