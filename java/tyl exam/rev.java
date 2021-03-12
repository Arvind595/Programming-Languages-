import java.util.*;
class rev{

    public static void main(String args[]){
        System.out.println("enter the number");
        Scanner s= new Scanner(System.in);
        int n= s.nextInt();
        s.close();
        int rem;
        int rev=0;
        while(n!=0){
            rem=n%10;
            rev=rev*10+rem;
            n/=10;
        }
        System.out.print(rev);
    }
}