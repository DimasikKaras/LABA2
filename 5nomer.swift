// Модуль 16
import Foundation

func minOperations(_ S: String) -> Int {
    let n = S.count
    var min_ops = n
    
    for k in stride(from: n / 2, through: 1, by: -1) {
        let startIndex1 = S.startIndex
        let endIndex1 = S.index(startIndex1, offsetBy: k)
        let substring1 = S[startIndex1..<endIndex1]
        
        let startIndex2 = S.index(startIndex1, offsetBy: k)
        let endIndex2 = S.index(startIndex2, offsetBy: k)
        
        if endIndex2 <= S.endIndex {
            let substring2 = S[startIndex2..<endIndex2]
            
            if substring1 == substring2 {
                let ops = k + 1 + (n - 2 * k)
                if ops < min_ops {
                    min_ops = ops
                }
            }
        }
    }
    return min_ops
}

func vvod() -> String {
    print("Введите строку: ", terminator: "")
    return readLine() ?? ""
}

func vivod(_ input: String, _ operations: Int) {
    print("\nРезультат:")
    print("Строка: \"\(input)\"")
    print("Минимальное количество операций: \(operations)")
}

let input = vvod()
let result = minOperations(input)
vivod(input, result)
