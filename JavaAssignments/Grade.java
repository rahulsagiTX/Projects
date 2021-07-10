

import java.util.Scanner;  

public class Grade
{
   public static void main(String[] args) {

      double discountRate;

char custType = 'A';

switch (custType)

{

  case 'A':

      discountRate = .08;

  case 'B':

      discountRate = .06;

  case 'C':

      discountRate = .04;

break;

  default:

      discountRate = 0.0;

}

System.out.println(discountRate);
   
  }
  
}