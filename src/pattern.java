public class pattern {
    public static void main(String[] args){

        int i,j,k;
        for (i=1; i<=12; i++){
            for (j= 1; j<= i; j++){
                System.out.print("*");
            }
            for(k=0; k<=12 ; k++){
                System.out.print(" ");
            }

            System.out.println();
        }
    }
}
