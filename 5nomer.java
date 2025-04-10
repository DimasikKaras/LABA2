import java.util.Scanner;

public class Main {

    public static int turniri(int a) {
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

    public static int vvodchisla() {
        Scanner scanner = new Scanner(System.in);
        int a;
        System.out.print("Введите количество команд: ");
        
        while (true) {
            try {
                a = scanner.nextInt();
                // Если число положительное
                if (a > 0) {
                    break;
                } else {
                    System.out.print("Ошибка! Введите целое положительное число: ");
                }
            } catch (Exception e) {
                // Очистка буфера ввода
                scanner.next();
                System.out.print("Ошибка! Введите целое положительное число: ");
            }
        }
        return a;
    }

    public static void vivod(int a, int b) {
        System.out.println("Общее количество матчей для " + a + " команд: " + b);
    }

    public static void main(String[] args) {
        int a = vvodchisla();
        int b = turniri(a);
        vivod(a, b);
    }
}
