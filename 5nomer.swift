func turniri(_ a: Int) -> Int {
    var a = a
    var itog = 0
    while a > 1 {
        if a % 2 == 0 {  // Четное количество команд
            itog += a / 2
            a /= 2
        } else {  // Нечетное количество команд
            itog += (a - 1) / 2
            a = (a - 1) / 2 + 1
        }
    }
    return itog
}

func vvodchisla() -> Int {
    var a: Int = 0
    print("Введите количество команд: ", terminator: "")
    
    while true {
        if let input = readLine(), let number = Int(input), number > 0 {
            a = number
            break
        } else {
            print("Ошибка! Введите целое положительное число: ", terminator: "")
        }
    }
    return a
}

func vivod(_ a: Int, _ b: Int) {
    print("Общее количество матчей для \(a) команд: \(b)")
}

let a = vvodchisla()
let b = turniri(a)
vivod(a, b)
