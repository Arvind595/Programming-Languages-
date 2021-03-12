import java.util.*;

// Java code for Replace all 0 with 5 in an input Integer 
class rep05 {

    // A recursive function to replace all 0s with 5s in
    // an input number. It doesn't work if input number
    // itself is 0.
    static int convert0To5Rec(int num) {
        // Base case
        if (num == 0)
            return 0;

        // Extraxt the last digit and change it if needed
        int digit = num % 10;
        if (digit == 0)
            digit = 5;

        // Convert remaining digits and append the
        // last digit
        return convert0To5Rec(num / 10) * 10 + digit;
    }

    // It handles 0 and calls convert0To5Rec() for
    // other numbers
    static int convert0To5(int num) {
        if (num == 0)
            return 5;
        else if (num < 0) {
            num = num * -1;
            int res = convert0To5Rec(num);
            return res * -1;
        } else
            return convert0To5Rec(num);
    }

    // Driver function
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int i = sc.nextInt();
        sc.close();
        System.out.println(convert0To5(i));
    }
}