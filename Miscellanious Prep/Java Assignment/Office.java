import java.util.Scanner;

public class Office 
{
   public static void main(String[] args)
   {
      
      int building;
      int input = 1;
      int office;
      int rent;
      int empty;
      int totalOffice = 0;
      int totalRent = 0;
      double percent;
      final double calc = 100.00;
      
      Scanner info = new Scanner(System.in);
      
      System.out.println("Please enter the total number of buildings in the complex: ");
      building = info.nextInt();
      
      while (input <= building) {
      
         System.out.println("Please enter the number of offices in Building " 
            + input);
         office = info.nextInt();
         
         System.out.println("Please enter the number of offices you will rent in Building " 
            + input);
         rent = info.nextInt();
         
         totalOffice += office;
         totalRent += rent;   
         
         input++;
         
      } 
      
      empty = totalOffice - totalRent;
      percent = calc * totalRent / totalOffice;
      
      System.out.println("The total number of offices that the entire complex has are " 
         + totalOffice + " offices");
      System.out.println("The total number of rented offices that the entire complex has are " 
         + totalRent + " offices");
      System.out.println("The total number of empty offices that the entire complex has are " 
         + empty + " offices");
      System.out.printf("The percentage of offices rented are %.2f%%%n", percent);
      
   } 
   
}
