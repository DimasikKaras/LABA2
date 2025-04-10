using System;

class Module16
{
    static int minOperations(string S)
    {
        int n = S.Length;
        int min_ops = n;

        for (int k = n / 2; k >= 1; --k)
        {
            if (S.Substring(0, k) == S.Substring(k, k))
            {
                int ops = k + 1 + (n - 2 * k);
                if (ops < min_ops)
                {
                    min_ops = ops;
                }
            }
        }
        return min_ops;
    }

    static string vvod()
    {
        Console.Write("Введите строку: ");
        return Console.ReadLine();
    }

    static void vivod(string input, int operations)
    {
        Console.WriteLine("\nРезультат:");
        Console.WriteLine($"Строка: \"{input}\"");
        Console.WriteLine($"Минимальное количество операций: {operations}");
    }

    static void Main()
    {
        string input = vvod();
        int result = minOperations(input);
        vivod(input, result);
    }
}
