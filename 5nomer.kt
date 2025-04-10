import java.util.*

fun turniri(a: Int): Int {
    var a = a
    var itog = 0
    while (a > 1) {
        if (a % 2 == 0) {  // Четное количество команд
            itog += a / 2
            a /= 2
        } else {  // Нечетное количество команд
            itog += (a - 1) / 2
            a = (a - 1) / 2 + 1
        }
    }
    return itog
}

fun vvodchisla(): Int {
    val scanner = Scanner(System.`in`)
    var a: Int
    print("Введите количество команд: ")
    
    while (true) {
        try {
            a = scanner.nextInt()
            
            // Если число положительное
            if (a > 0) {
                break
            } else {
                print("Ошибка! Введите целое положительное число: ")
            }
        } catch (e: InputMismatchException) {
            // Очистка буфера ввода
            scanner.next()
            print("Ошибка! Введите целое положительное число: ")
        }
    }
    return a
}

fun vivod(a: Int, b: Int) {
    println("Общее количество матчей для $a команд: $b")
}

fun main() {
    val a = vvodchisla()
    val b = turniri(a)
    vivod(a, b)
}
