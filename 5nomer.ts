func proverka(_ num: Int) -> Int {
    var a = abs(num)
    var res = 0
    
    if a == 0 {
        return 1
    }
    
    while a > 0 {
        let promej = a % 10
        if promej % 2 == 0 {
            res += 1
        }
        a /= 10
    }
    return res
}

func vivod(_ num: Int, _ res: Int) {
    print("Число \(num) имеет \(res) чётных чисел")
}

func vvodChisla(_ firstvvod: Bool) -> Int? {
    if firstvvod {
        print("Введите число (для завершения введите любое нечисленное значение): ", terminator: "")
    }
    return Int(readLine() ?? "")
}

var firstvvod = true
while true {
    guard let num = vvodChisla(firstvvod) else { break }
    firstvvod = false
    let res = proverka(num)
    vivod(num, res)
}
