import java.util.*;
class seclarge {
	
 	public static void main(String[] args) {
	 System.out.println("enter the size");
 		Scanner s = new Scanner(System.in);
		int n = s.nextInt();
		s.close();
		int arr[] = new int[n];
		System.out.println("enter the numbers");
		for(int i = 0; i < n; i++)
		    arr[i] = s.nextInt();
		for (int i = 0; i < n - 1; i++) {
			for(int j = 0; j < n - 1 - i; j++) {	
				if (arr[j] > arr[j+1]) {
					int temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp;
				}
			}
		}
 		System.out.println("\nSecond largest number is:"+ arr[n-2]);
	}
}