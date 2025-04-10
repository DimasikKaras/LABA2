import java.util.*

fun minOperations(S: String): Int {
    val n = S.length
    var min_ops = n

    for (k in n / 2 downTo 1) {
        if (S.substring(0, k) == S.substring(k, 2 * k)) {
            val ops = k + 1 + (n - 2 * k)
            if (ops < min_ops) {
                min_ops = ops
            }
        }
    }
    return min_ops
}

fun vvod(): String {
    val scanner = Scanner(System.`in`)
    print("Введите строку: ")
    return scanner.nextLine()
}

fun vivod(input: String, operations: Int) {
    println("\nРезультат:")
    println("Строка: \"$input\"")
    println("Минимальное количество операций: $operations")
}

fun main() {
    val input = vvod()
    val result = minOperations(input)
    vivod(input, result)
}
