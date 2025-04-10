import java.util.*

fun proverka(num: Long): Int { // Функция поиска чётных чисел
    var a = Math.abs(num)
    var res = 0

    if (a == 0L) {
        return 1
    }

    while (a > 0) {
        val promej = (a % 10).toInt()
        if (promej % 2 == 0) {
            res++
        }
        a /= 10
    }
    return res
}

fun vivod(num: Long, res: Int) { // Функция вывода
    println("Число $num имеет $res чётных цифр")
}

fun vvodChisla(firstvvod: Boolean): Long { // Функция ввода
    val scanner = Scanner(System.`in`)
    if (firstvvod) {
        print("Введите число (для завершения введите любое нечисленное значение): ")
    }
    return if (scanner.hasNextLong()) {
        scanner.nextLong()
    } else {
        -1 // Вернем -1 как признак окончания ввода
    }
}

fun main() {
    var firstvvod = true
    val scanner = Scanner(System.`in`)
    
    while (true) {
        val num = vvodChisla(firstvvod)
        firstvvod = false
        
        if (num == -1L) break
        
        val res = proverka(num)
        vivod(num, res)
    }
}
