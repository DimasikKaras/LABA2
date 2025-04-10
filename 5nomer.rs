use std::io;
fn turniri(a: u32) -> u32 {
    let mut itog= 0;
    let mut a = a;
    while a > 1 {
        if a % 2 == 0 {
            itog += a/2;
            a /= 2;
        }
        else {
            itog += (a-1)/2;
            a = (a-1)/2 + 1;
        }
    }
    itog
}

fn vvod() -> u32{
    let mut import = String::new();
    println!("Введите количество команд: ");

    loop {
        import.clear();
        io::stdin().read_line(&mut import).expect("Ошибка чтения строки");

        match import.trim().parse::<u32>() {
            Ok(a)if a > 0 => return a,
            _ => println!("Ошибка! Введите целое положительное число: "),
        }
    }
}

fn vivod(a: u32, b: u32) {
    println!("Общее количество матчей для {} команд: {}", a, b);
}

fn main() {
    let a = vvod();
    let b = turniri(a);
    vivod(a, b);
}

