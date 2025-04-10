using System;

class Module10
{
    static int turniri(int a)
    {
        int itog = 0;
        while (a > 1)
        {
            if (a % 2 == 0)
            {
                itog += a / 2;
                a /= 2;
            }
            else
            {
                itog += (a - 1) / 2;
                a = (a - 1) / 2 + 1;
            }
        }
        return itog;
    }

    static int vvodchisla()
    {
        int a;
        Console.Write("Введите количество команд: ");
        
        while (true)
        {
            string input = Console.ReadLine();
            if (int.TryParse(input, out a) && a > 0)
            {
                break;
            }
            Console.Write("Ошибка! Введите целое положительное число: ");
        }
        return a;
    }

    static void vivod(int a, int b)
    {
        Console.WriteLine($"Общее количество матчей для {a} команд: {b}");
    }

    static void Main()
    {
        int a = vvodchisla();
        int b = turniri(a);
        vivod(a, b);
    }
}
