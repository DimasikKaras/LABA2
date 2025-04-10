#include <iostream>
#include <limits>
using namespace std;

int turniri(int a) {
    int itog = 0;
    while (a > 1) {
        if (a % 2 == 0) {  // Четное количество команд
            itog += a / 2;
            a /= 2;
        } else {  // Нечетное количество команд
            itog += (a - 1) / 2;
            a = (a - 1) / 2 + 1;
        }
    }
    return itog;
}

int vvodchisla() {
 int a;
 cout << "Введите количество команд: ";
    
    while (true) {
        cin >> a;
        
        // Если ввод успешен и число положительное
        if (cin.good() && a > 0) {
            break;
        }
        
        // Очистка флагов ошибок и буфера ввода
        cin.clear();
        cin.ignore(numeric_limits<streamsize>::max(), '\n');
        
        cout << "Ошибка! Введите целое положительное число: ";
    }
 return a;
}

void vivod(int a, int b) {
 cout << "Общее количество матчей для " << a << " команд: " << b << endl;
}

int main() {
    int a = vvodchisla();
    int b = turniri(a);
    vivod(a, b);
    return 0;
}
