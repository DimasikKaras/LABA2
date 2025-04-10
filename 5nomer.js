function proverka(num) { // Функция поиска чётных цифр
    const a = Math.abs(num);
    let res = 0;
    
    if (a === 0) {
        return 1;
    }
    
    let temp = a;
    while (temp > 0) {
        const promej = temp % 10;
        if (promej % 2 === 0) {
            res++;
        }
        temp = Math.floor(temp / 10);
    }
    return res;
}

function vivod(num, res) { // Функция вывода
    console.log(`Число ${num} имеет ${res} чётных цифр`);
}

function vvodChisla(firstvvod) { // Функция ввода
    if (firstvvod) {
        process.stdout.write("Введите число (для завершения введите любое нечисленное значение): ");
    }
    return new Promise(resolve => {
        const readline = require('readline').createInterface({
            input: process.stdin,
            output: process.stdout
        });
        
        readline.question('', input => {
            readline.close();
            const num = parseInt(input);
            resolve(isNaN(num) ? null : num);
        });
    });
}

async function main() {
    let firstvvod = true;
    while (true) {
        const num = await vvodChisla(firstvvod);
        firstvvod = false;
        
        if (num === null) break;
        
        const res = proverka(num);
        vivod(num, res);
    }
}
