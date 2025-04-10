import java.util.Scanner;

public class Main {

    public static int proverka(long num) {
        long a = Math.abs(num);
        int res = 0;

        if (a == 0) {
            return 1;
        }

        while (a > 0) {
            int promej = (int)(a % 10);
            if (promej % 2 == 0) {
                res++;
            }
            a /= 10;
        }
        return res;
    }

    public static void vivod(long num, int res) {
        System.out.println("Число " + num + " имеет " + res + " чётных чисел");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        boolean firstvvod = true;
        
        System.out.print("Введите число (для завершения введите любое нечисленное значение): ");
        
        while (scanner.hasNextLong()) {
            long num = scanner.nextLong();
            int res = proverka(num);
            vivod(num, res);
            System.out.print("Введите следующее число (для завершения введите любое нечисленное значение): ");
        }
        
        scanner.close();
    }
}
