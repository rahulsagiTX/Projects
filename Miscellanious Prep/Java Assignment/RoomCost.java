import java.util.Scanner;
import java.lang.Math;

public class RoomCost
{
   public static void main(String[] args)
   {
      
      Scanner data = new Scanner(System.in);
      
      double length = data.nextDouble();
      double width = data.nextDouble();
      
      double feet = Math.pow(length, 2) + Math.pow(width, 2);
      double yards = Math.pow((length * 3), 2) + Math.pow((width * 3), 2);
      
      double cost = 20 * yards;
      
      System.out.println("Number of Square Feet " + feet);
      System.out.println("Number of Square Yards " + yards);
      System.out.println("Cost to carpet the room is $" + cost);
      
   } 
}
