def print_factors(x):
    temp=[]
    for i in range(1, x + 1):
        if x % i == 0:
            temp.append(i)
    factorslist.append(temp)
    
factorslist=[]
equallist=[]
elements=[]
n=int(input("number of elements? "))
for i in range(0,n):
    e=int(input())
    elements.append(e)

for i in elements:
    print_factors(i)
#print(factorslist)

for k in range(0,len(factorslist)):
    odd_num=0
    eve_num=0
    for i in factorslist[k]:
        if (i % 2 == 0): 
            eve_num=eve_num+1
        else:
            odd_num=odd_num+1
    if eve_num==odd_num:
        equallist.append(1)
    else:
        equallist.append(0)
total=0
for ele in range(0, len(equallist)): 
    total = total + equallist[ele]
print("good are: ",total)


##amlan code
def fun(n):
    good=0
    for k in range(0,len(n)):
        factors=[]
        for i in range(1,int(n[k]/2)+1):
            if n[k]%i==0:
                factors.append(i)
        factors.append(n[k])
        o=0
        for j in range(0,len(factors)):
            if factors[j]%2==1:
                o+=1
        e=len(factors)-o
        if(e==0):
            good+=1
    return good

inp=[]
n=int(input("enter elements number: "))
for i in range(0,n):
    e=int(input())
    inp.append(e)
print(n-fun(inp))




##chandhan code

public class HelloWorld{

     public static void main(String []args){
        Scanner s= new Scanner(System.in);
        int l=s.nextInt();
        int[] arr =new int [l];
        int count=0;
        for(int i=0; i<l;i++){
        arr[i]=s.nextInt();
        int x=check(arr[i]);
        if(x==1)count++;
     }
     System.out.print(count);
     }
     public static int check(int n){
         int even=0;
         int odd=0;
         for (int i=2;i<n;i++){
             if(n%i==0) even++;
             else odd++;
         }
         if (even==odd) return 1;
         else return 0;
     }
}