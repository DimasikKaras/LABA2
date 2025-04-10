package main

import (
	"fmt"
)

func turniri(a int) int { //Функция подсчёта матчей
	itog := 0
	for a > 1 {
		if a%2 == 0 { // Четное количество команд
			itog += a / 2
			a /= 2
		} else { // Нечетное количество команд
			itog += (a - 1) / 2
			a = (a-1)/2 + 1
		}
	}
	return itog
}

func vvod() int { //Функция ввода
	var a int
	for {
		fmt.Print("Введите количество команд: ")
		_, err := fmt.Scan(&a)
		
		// Если ввод успешен и число положительное
		if err == nil && a > 0 {
			break
		}
		
		// Очистка буфера ввода
		var Err string
		fmt.Scanln(&Err)
		
		fmt.Println("Ошибка! Введите целое положительное число.")
	}
	return a
}

func vivod(a, b int) {//Функция вывода
	fmt.Printf("Общее количество матчей для %d команд: %d\n", a, b)
}

func main() {
	a := vvod()
	b := turniri(a)
	vivod(a, b)
}
