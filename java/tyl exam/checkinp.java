import java.util.*;

class Utility {
    static boolean numberOrNot(final String input) {
        try {
            Integer.parseInt(input);
        } catch (final NumberFormatException ex) {
            return false;
        }
        return true;
    }
}

public class checkinp {
    public static void main(final String[] args) {
        System.out.println("Enter your mobile number");

         Scanner sc = new Scanner(System.in);

         String input = sc.next();
        sc.close();
        if (Utility.numberOrNot(input) && (input.length() == 10)) {
            System.out.println("Good!!! You have entered valid mobile number");
        } else {
            System.out.println("Sorry!!!! You have entered invalid mobile number. Try again...");
        }
    }
}