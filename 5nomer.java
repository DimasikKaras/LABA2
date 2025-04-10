import java.util.Scanner;

public class Main {
    public static int minOperations(String S) {
        int n = S.length();
        int min_ops = n;

        for (int k = n / 2; k >= 1; --k) {
            if (S.substring(0, k).equals(S.substring(k, 2 * k))) {
                int ops = k + 1 + (n - 2 * k);
                if (ops < min_ops) {
                    min_ops = ops;
                }
            }
        }
        return min_ops;
    }

    public static String vvod() {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Введите строку: ");
        String input = scanner.nextLine();
        return input;
    }

    public static void vivod(String input, int operations) {
        System.out.println("\nРезультат:");
        System.out.println("Строка: \"" + input + "\"");
        System.out.println("Минимальное количество операций: " + operations);
    }

    public static void main(String[] args) {
        String input = vvod();
        int result = minOperations(input);
        vivod(input, result);
    }
}
