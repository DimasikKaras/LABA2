function turniri(a: number): number {
    let itog = 0;
    while (a > 1) {
        if (a % 2 === 0) {  // Четное количество команд
            itog += Math.floor(a / 2);
            a = Math.floor(a / 2);
        } else {  // Нечетное количество команд
            itog += Math.floor((a - 1) / 2);
            a = Math.floor((a - 1) / 2) + 1;
        }
    }
    return itog;
}

function vvodchisla(): number {
    let a = 0;
    let input = prompt("Введите количество команд: ") || "";
    
    while (true) {
        const num = parseInt(input);
        
        // Если ввод успешен и число положительное
        if (!isNaN(num) && num > 0) {
            a = num;
            break;
        }
        
        input = prompt("Ошибка! Введите целое положительное число: ") || "";
    }
    return a;
}

function vivod(a: number, b: number): void {
    console.log(`Общее количество матчей для ${a} команд: ${b}`);
}

function main(): void {
    const a = vvodchisla();
    const b = turniri(a);
    vivod(a, b);
}

main();
