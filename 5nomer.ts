function minOperations(S: string): number {
    const n = S.length;
    let min_ops = n;

    for (let k = Math.floor(n / 2); k >= 1; --k) {
        if (S.substring(0, k) === S.substring(k, k + k)) {
            const ops = k + 1 + (n - 2 * k);
            if (ops < min_ops) {
                min_ops = ops;
            }
        }
    }
    return min_ops;
}

function vvod(): string {
    const input = prompt("Введите строку: ") || "";
    return input;
}

function vivod(input: string, operations: number): void {
    console.log("\nРезультат:");
    console.log(`Строка: "${input}"`);
    console.log(`Минимальное количество операций: ${operations}`);
}

function main(): void {
    const input = vvod();
    const result = minOperations(input);
    vivod(input, result);
}

main();
