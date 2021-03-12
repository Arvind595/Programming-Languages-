import java.util.Scanner;

class bintod {
    public static void main(String args[]) {
        System.out.println("enter a binary number");
        Scanner s = new Scanner(System.in);

        int n = s.nextInt();
        s.close();
        int decimal = 0, p = 0;

        while (n != 0) {
            decimal += ((n % 10) * Math.pow(2, p));
            n = n / 10;
            p++;
        }

        System.out.println(decimal);
    }
}