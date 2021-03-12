import java.io.*;
class demo{
    public static void main(final String args[]) throws IOException {
        char c;
        final BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
    System.out.println("enter");
    do{
        c = extracted(br);
        System.out.print(c);
    }while(c!='q');

}

    private static char extracted(final BufferedReader br) throws IOException {
        char c;
        c=(char)br.read();
        return c;
    }
}