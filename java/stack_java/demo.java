package java.stack_java;

class stack {
    int st[]=new int[5];
    int top;

    stack(){
        top=-1;
    }

    void push(int item){
        if(top==4){
            System.out.println("stack full");
        }
        else{ 
        st[++top]=item;
        }
    }

    int pop(){
        if (top<0){
            System.out.println("stack empty");
            return 0;
        }
        else {
            return st[top--];
            }
    }
}

class demo{
    public static void main(String []args){
        stack mystack=new stack();
        for(int i=1;i<6;i++){
            mystack.push(i);
        }
        for(int i=1;i<6;i++){
            mystack.pop();
        }
        mystack.push(5);
        mystack.pop();
    }
}
// not printing??