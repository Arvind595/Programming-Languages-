// Java code for Pascal's Triangle 
import java.util.*;

class pascal {

  // Function to print first
  // n lines of Pascal's Triangle
  static void printPascal(int n) {

    // Iterate through every line
    // and print entries in it
    int space_count = n;
    for (int line = 0; line < n; line++) {
      for (int space = 0; space < space_count; space++) {
        System.out.print(" ");
      }
      space_count--;
      // Every line has number of
      // integers equal to line number
      for (int i = 0; i <= line; i++)
        System.out.print(binomialCoeff(line, i) + " ");
      System.out.println();

    }
  }

  static int binomialCoeff(int n, int k) {
    int res = 1;

    if (k > n - k)
    k = n - k;

    for (int i = 0; i < k; ++i) {
      res *= (n - i);
      res /= (i + 1);
    }
    return res;
  }
 
  // Driver code
  public static void main(String args[]) {
    System.out.println("enter number of rows");
    Scanner sc = new Scanner(System.in);
    int n = sc.nextInt();
    sc.close();
    printPascal(n);
  }
}