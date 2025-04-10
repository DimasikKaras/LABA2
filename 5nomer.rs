use std::io;


fn proverka(a:i128) -> i32 {
    let mut num = a.abs();
    let mut res = 0;

    if num == 0 {
        return 1;
    }
    while num > 0 {
        let promej = (num%10) as i32;
        if promej %2 == 0 {
            res += 1;
        }
        num /= 10;
    }
    res
}

fn vivod(a:i128, b:i32) {
    println!("Число {} имеет {} чётный цифр", a, b);
}

fn vvod() -> (bool, i128) {
    let mut import = String::new();
    println!("Введите число (для выхода из программы, введите q): ");

    loop {
        import.clear();
        io::stdin().read_line(&mut import).expect("Ошибка чтения строки");
        let input = import.trim();
        if input == "q" {return (false, 0)}

        match input.parse::<i128>() {
            Ok(a)if a > 0 => return (true, a),
            _ => println!("Ошибка! Введите число: "),
        }
    }
}

fn main() {
    loop {
        let (err, a)= vvod();
        if err {
            let b:i32 = proverka(a);
            vivod(a, b);
        } else { break; }
    }
}
