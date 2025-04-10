#include <iostream>
#include <string>

using namespace std;

int minOperations(const string& S) { 
    int n = S.length();
    int min_ops = n;

    for (int k = n / 2; k >= 1; --k) {
        if (S.substr(0, k) == S.substr(k, k)) { //Сравнение подстроки, которая начинается с 0 и имеет длину 3 и подстроку которая начинается с k и имеет длину 3
            int ops = k + 1 + (n - 2 * k);
            if (ops < min_ops) {
                min_ops = ops;
            }
        }
    }
    return min_ops;
}

string vvod() { //Функция ввода
    string input;
    cout << "Введите строку: ";
    getline(cin, input);
    return input;
}

void vivod(const string& input, int operations) { // Функция вывода
    cout << "\nРезультат:\n";
    cout << "Строка: \"" << input << "\"\n";
    cout << "Минимальное количество операций: " << operations << endl;
}

int main() {
    string input = vvod();
    int result = minOperations(input);
    vivod(input, result);
    return 0;
}