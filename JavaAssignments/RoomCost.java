import java.util.Scanner;

public class RoomCost 
{
   public static void main(String[] args)
   {
      
      int room = 5;
      double length;
      double width;
      double sqFeet;
      double sqYards;
      double totalSqFeet;
      double totalSqYards;
      double cost;
      double totalCost;
      final double initialCost = 10.00;
      
      Scanner info = new Scanner(System.in);
      
      totalSqFeet = 0;
      totalSqYards = 0;
      totalCost = 0;
      
      for (int rmNum = 1; rmNum <= room; rmNum++) {
      
         System.out.println("Please enter the length of the room: ");
         length = info.nextDouble();
         System.out.println("Please enter the width of the room: ");
         width = info.nextDouble();
         
         sqFeet = length * width;
         sqYards = sqFeet / 9.0;
         cost = initialCost * sqYards;
         
         System.out.println("The number of square feet in Room " 
            + rmNum + " is " + sqFeet + " square feet");
         System.out.println("The number of square yards in Room " 
            + rmNum + " is " + sqYards + " square yards");
         System.out.printf("The cost of Room " 
            + rmNum + " is $%,.2f \n", cost);
            
         totalSqFeet += sqFeet;
         totalSqYards += sqYards;
         totalCost += cost;
         
      }
      
      System.out.println("The total number of square feet in the apartment is "
         + totalSqFeet + " square feet");
      System.out.println("The total number of square yards in the apartment is "
         + totalSqYards + " square yards");
      System.out.printf("The total cost of the apartment is $%,.2f ",
         totalCost);

   } 
   
}