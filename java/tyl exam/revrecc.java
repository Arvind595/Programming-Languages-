 import java.util.Scanner;

class revrecc
{
   public static void reverseMethod(int number) {
       if (number < 10) {
     System.out.println(number);
     return;
       }
       else {
           System.out.print(number % 10);
           reverseMethod(number/10);   //Method is calling itself: recursion
       }
   }
   public static void main(String args[])
   {
  int num=0;
  System.out.println("Input your number and press enter: ");
  Scanner in = new Scanner(System.in);
  num = in.nextInt();
  in.close();
  System.out.print("Reverse of the input number is:");
  reverseMethod(num);
  System.out.println();
   }
}