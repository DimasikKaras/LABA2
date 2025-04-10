use std::io;

fn min_operations(s: &str) -> usize {
    let n = s.len();
    let mut min_ops = n;

    for k in (1..=n/2).rev() {
        if s[0..k] == s[k..2*k] {
            let ops = k + 1 + (n - 2 * k);
            if ops < min_ops {
                min_ops = ops;
            }
        }
    }
    min_ops
}

fn vivod(a: &str, b:usize) {
    println!("Для строки: {} минимальное колличество операций {}.",a, b)
}

fn vvod() -> String {
    println!("Введите строку: ");
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения строки");
    input.trim().to_string()
}

fn main() {
    let a = vvod();
    let b = min_operations(&a);
    vivod(&a, b);
}
