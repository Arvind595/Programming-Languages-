import java.util.*;
class swapnum
{
  public static void main(String args[])
  {System.out.println("enter the two numbers to swap");
    Scanner sc = new Scanner(System.in);
    int a = sc.nextInt();
    int b = sc.nextInt();
    sc.close();
    System.out.println("Before Swapping a = " + a + " b = " + b);
    a = a + b;
    b = a - b;
    a = a - b;
    System.out.println("After Swapping a = " + a + " b = " + b);
  }
}