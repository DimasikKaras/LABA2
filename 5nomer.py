def minOperations(S):
    n = len(S)
    min_ops = n

    for k in range(n // 2, 0, -1):
        if S[:k] == S[k:2*k]:  # Сравнение подстроки, которая начинается с 0 и имеет длину k и подстроку которая начинается с k и имеет длину k
            ops = k + 1 + (n - 2 * k)
            if ops < min_ops:
                min_ops = ops
    return min_ops

def vvod():  # Функция ввода
    input_str = input("Введите строку: ")
    return input_str

def vivod(input_str, operations):  # Функция вывода
    print("\nРезультат:")
    print(f"Строка: \"{input_str}\"")
    print(f"Минимальное количество операций: {operations}")


input_str = vvod()
result = minOperations(input_str)
vivod(input_str, result)

