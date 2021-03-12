import java.util.*;

class bits {
    public static void main(String[] args) {
        System.out.println("enter an number");
        Scanner sc = new Scanner(System.in);
        
        int ans = 0; // initialise ans to 0

        int n = sc.nextInt();
        sc.close();
        while (n > 0) {
            n = n & (n - 1); // counting set bits in x
            ans++; // subsequently increasing the value of answer
        }

        System.out.println(ans);
    }
}