import java.util.Scanner;

public class Student 
{
   public static void main(String[] args)
   {
      
      int numOfStudents = 5;
      String studentName;
      int grade1;
      int grade2;
      int grade3;
      final double countAvg = 3.0;
      double average;
      
      
      for (int stuName = 1; stuName <= numOfStudents; stuName++) {
      
         Scanner info = new Scanner(System.in);
      
         System.out.println("Please enter Student " + stuName + " name: ");
         studentName = info.nextLine();
         
         System.out.println("Please enter " + studentName + " 1st test score: ");
         grade1 = info.nextInt();
         
         System.out.println("Please enter " + studentName + " 2nd test score: ");
         grade2 = info.nextInt();
         
         System.out.println("Please enter " + studentName + " 3rd test score: ");
         grade3 = info.nextInt();
         
         average = (grade1 + grade2 + grade3) / countAvg;
         
         System.out.println(studentName + "'s semester average is " + average);
         
         
      }
      
   } 
   
}