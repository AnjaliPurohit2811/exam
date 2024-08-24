import java.util.Scanner;

public class even {
    public static void main( String [] args){
        int number ;
        int sum=0;
        Scanner input = new Scanner(System.in);

        System.out.println("enter the number = ");
        number = input.nextInt();

        for (int i = 1; i<= number; i++){
        if(i%2==0){
            System.out.println(i);
            sum = sum+i;
            System.out.println(sum);
        }
        }
    }

}
