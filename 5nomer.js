function turniri(a) {
    let itog = 0;
    while (a > 1) {
        if (a % 2 === 0) {  // Четное количество команд
            itog += a / 2;
            a /= 2;
        } else {  // Нечетное количество команд
            itog += (a - 1) / 2;
            a = (a - 1) / 2 + 1;
        }
    }
    return itog;
}

function vvodchisla() {
    let a;
    while (true) {
        const input = prompt("Введите количество команд: ");
        a = parseInt(input);
        
        // Проверка на число и положительное значение
        if (!isNaN(a) && a > 0) {
            break;
        }
        
        console.log("Ошибка! Введите целое положительное число.");
    }
    return a;
}

function vivod(a, b) {
    console.log(`Общее количество матчей для ${a} команд: ${b}`);
}

function main() {
    const a = vvodchisla();
    const b = turniri(a);
    vivod(a, b);
}

main();
