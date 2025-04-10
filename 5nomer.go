package main

import (
	"fmt" // для ввода и вывода
	"strings" // для работы со строками
)

func minOperations(S string) int { // Функция проверки
	n := len(S)
	minOps := n

	for k := n / 2; k >= 1; k-- {
		if strings.HasPrefix(S[k:], S[:k]) { // сравниваем подстроку [k:] с префиксом [:k]
			ops := k + 1 + (n - 2*k)
			if ops < minOps {
				minOps = ops
			}
		}
	}
	return minOps
}

func getInput() string { // функция ввода
	var input string
	fmt.Print("Введите строку: ")
	fmt.Scanln(&input)
	return input
}

func printResult(input string, operations int) { // функция вывода
	fmt.Println("\nРезультат:")
	fmt.Printf("Строка: \"%s\"\n", input)
	fmt.Printf("Минимальное количество операций: %d\n", operations)
}

func main() {
	input := getInput()
	result := minOperations(input)
	printResult(input, result)
}
