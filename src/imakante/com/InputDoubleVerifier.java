

package imakante.com;
import javax.swing.*;

public class InputDoubleVerifier extends InputVerifier
{
    public boolean verify(JComponent input) 
    {
      byte UpRange = 57;
      byte DownRange = 48;
      byte comma = 44;
      byte dot = 46;
      int countCommaDot[] = null; // masiv za rzpolovenieto na zapetaqta
      int count = 0; // za broene kolko pyti se sre6ta zapetaq ili to4ka
      boolean checkSimbol=false;
      JTextField tf = (JTextField) input;
      int lenth = tf.getText().length();
      byte ch[] = new byte[lenth];
      ch = tf.getText().getBytes();
      countCommaDot = new int[lenth];
      
       for(int i=0;i < lenth; i++)
         {
           if(count > 1) 
           {
               
               break;
           }
           if( ch[i]== comma | ch[i]== dot)
           {
               countCommaDot[i] = 1;
               count++;
           }
           else countCommaDot[i] = 0;
         }
       if(count <= 1)  // ako potrebitelq e vkaral pove4e ot edin pat to4ka ili zapetaq
           {
              for(int i =0; i < lenth; i++ )
              {
                  if(countCommaDot[i]==1) 
                  {
                      count = i;
                      break;
                  }
              }
             if(count !=0)       
             {   
              for(int i=0;i < count-1; i++)
                 {
                   if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                     {
                      checkSimbol = true;
                     }
                   else checkSimbol= false;
                 }
             }
             
             if(count != lenth)       
             {    
               for(int i=count+1;i < lenth; i++)
                 {
                   if(( ch[i]<= UpRange)&&(ch[i] >=DownRange))
                     {
                      checkSimbol = true;
                     }
                   else checkSimbol= false;
                }
             }
       }
      
       return checkSimbol;
    }
   
    
}
