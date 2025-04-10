    itog = 0
    while a > 1:
        if a % 2 == 0:  # Четное количество команд
            itog += a // 2
            a = a // 2
        else:  # Нечетное количество команд
            itog += (a - 1) // 2
            a = (a - 1) // 2 + 1
    return itog

def vvodchisla():
    while True:
        try:
            a = int(input("Введите количество команд: "))
            if a > 0:
                return a
            else:
                print("Ошибка! Введите целое положительное число.")
        except ValueError:
            print("Ошибка! Введите целое положительное число.")

def vivod(a, b):
    print(f"Общее количество матчей для {a} команд: {b}")

a = vvodchisla()
b = turniri(a)
vivod(a, b)
