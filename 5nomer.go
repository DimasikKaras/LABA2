package main

import (
	"fmt"
	"math"
)

func proverka(num int64) int { // Функция проверки чётности цифр в числе
	if num == 0 { return 1 }
	c := 0
	for n := int64(math.Abs(float64(num))); n > 0; n /= 10 {
		if n%10%2 == 0 { c++ }
	}
	return c
}

func vivod(num int64, c int) { // функция вывода
	fmt.Printf("Число %d имеет %d чётных цифр\n", num, c)
}

func vvodChisla(prompt bool) (int64, bool) { // функция ввода
	if prompt { fmt.Print("Введите число (для завершения введите нечисловой символ): ") }
	var n int64
	_, err := fmt.Scan(&n)
	return n, err == nil
}

func main() {
	for first := true; ; first = false {
		if n, ok := vvodChisla(first); !ok {
			break
		} else {
			vivod(n, proverka(n))
		}
	}
}
