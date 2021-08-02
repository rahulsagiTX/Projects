import java.util.Scanner;

public class Cards
{
   public static void main(String[] args)
   {
      
      double x = 45.00;
      int cards;
      
      Scanner value = new Scanner(System.in);
      
      cards = value.nextInt();

      double price = x * cards;
      double saving = price * .10;
      double ultraSaving = price * .25;
      
      if (cards >= 1 && cards <= 10) {
      
         System.out.println("You have bought " + cards + " cards");
         System.out.println("You have saved $" + price * 0);
         System.out.println("You have spent $" + price);
         
      } else if (cards >= 11 && cards <= 25) {     
      
         System.out.println("You have bought " + cards + " cards");
         System.out.println("You have saved $" + saving);
         System.out.println("You have spent $" + (price - saving));
         
      } else if (cards >= 26 && cards <= 50) {
         
         System.out.println("You have bought " + cards + " cards");
         System.out.println("You have saved $" + ultraSaving);
         System.out.println("You have spent $" + (price - ultraSaving)); 
         
      } else {
      
         System.out.println("Invalid value. Please enter another number");
         
      }
      
   } 
   
}