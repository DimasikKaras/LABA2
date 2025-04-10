def proverka(num):  # Функция поиска чётных цифр
    a = abs(num)
    res = 0

    if a == 0:
        return 1

    while a > 0:
        promej = a % 10
        if promej % 2 == 0:
            res += 1
        a = a // 10
    return res


def vivod(num, res):  # Функция вывода
    print(f"Число {num} имеет {res} чётных цифр")


def vvodChisla(firstvvod):  # Функция ввода
    if firstvvod:
        print("Введите число (для завершения введите любое нечисленное значение): ", end="")
    try:
        num = int(input())
        return num
    except ValueError:
        return None



firstvvod = True
while True:
    num = vvodChisla(firstvvod)
    firstvvod = False
    if num is None:
        break
    res = proverka(num)
    vivod(num, res)\
