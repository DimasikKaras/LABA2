#include<iostream>
using namespace std;

int proverka(long long num) { // Функия поиска чётных чисел
 int a = abs(num);
 int res = 0;
 
 if(a == 0){
  return 1;
 }
 
 while (a > 0){
  int promej = a % 10;
  if(promej % 2 == 0){
   res++;
  }
  a /= 10;
 }
 return res;
}

void vivod(long long num, int res){ // Функция вывода
 cout << "Число " << num << " имеет " << res << " чётных чисел" << endl;
}

long long vvodChisla(bool firstvvod){ // Функция ввода
 long long num;
 if(firstvvod){
  cout << "Введите число (для завершения введите любое нечисленное значение): ";
 }
 cin >> num;
 return num;
 
}

int main(){
 bool firstvvod = true;
 while(cin){
  long long num = vvodChisla(firstvvod);
  firstvvod = false;
  if(cin.fail()) break;
  int res = proverka(num);
  vivod(num, res);
 }
 return 0;
}
