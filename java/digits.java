import java.util.*;
public class digits {
    public static void main( String[] args) {

         Scanner sc = new Scanner(System.in);
         try{
        int num;
        System.out.println("enter a number");
        num = sc.nextInt();

        if (num < 1000000 && num > 10 && num > 100 && num > 1000 && num > 10000 && num > 100000) {
            System.out.println("6 digit");
        }
        if (num < 100000 && num > 10 && num > 100 && num > 1000 && num > 10000) {
            System.out.println("5 digit");
        }
        if (num < 10000 && num > 10 && num > 100 && num > 1000) {
            System.out.println("4 digit");
        }
        if (num < 1000 && num > 10 && num > 100) {
            System.out.println("3 digit");
        }
        if (num < 100 && num > 10 && num > 10) {
            System.out.println("2 digit");
        }
        if (num < 10) {
            System.out.println("1 digit");
        }
    }
        finally {
            sc.close();
        }
    }
}