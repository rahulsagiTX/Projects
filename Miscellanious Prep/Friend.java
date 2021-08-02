import javax.swing.*;

public class Friend
{
   public static void main(String[] args)
   {
    
      String lastName;
      String state;
      int age;
      int grad;
      char logic;
      
      do {
      
         lastName = JOptionPane.showInputDialog
         ("What's your friend's last name: ");
         
         state = JOptionPane.showInputDialog
         ("What state does your friend live in?: ");
         
         age = Integer.parseInt(JOptionPane.showInputDialog
         ("What's your friend's age:"));
         
         grad = Integer.parseInt(JOptionPane.showInputDialog
         ("When did your friend graduate:"));
         
         JOptionPane.showMessageDialog(null, "Your friend's name is "
            + lastName);
           
         JOptionPane.showMessageDialog(null, "Your friend lives in "
            + state);
            
         JOptionPane.showMessageDialog(null, "Your friend's age is "
            + age);
            
         JOptionPane.showMessageDialog(null, "Your friend graduated in "
            + grad); 
            
         logic = JOptionPane.showInputDialog
         ("Do you want to input information about your friends: ").charAt(0);  
         
      } while (logic == 'Y' || logic == 'y');
   
   } 
   
}